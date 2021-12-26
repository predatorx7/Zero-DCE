import 'package:camera/camera.dart';
import 'package:cat/src/utils/camera_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:magnific_core/magnific_core.dart';
import 'package:magnific_ui/components/components.dart';
import 'package:nil/nil.dart';

/// Returns a suitable camera icon for [direction].
IconData getCameraLensIcon(CameraLensDirection direction) {
  switch (direction) {
    case CameraLensDirection.back:
      return Icons.camera_rear;
    case CameraLensDirection.front:
      return Icons.camera_front;
    case CameraLensDirection.external:
      return Icons.camera;
    default:
      throw ArgumentError('Unknown lens direction');
  }
}

class CameraView extends StatefulWidget {
  final CameraDescription description;
  final ResolutionPreset resolutionPreset;
  final Widget? output;

  const CameraView({
    Key? key,
    required this.description,
    this.output,
    this.resolutionPreset = ResolutionPreset.medium,
  }) : super(key: key);

  @override
  CameraViewState createState() => CameraViewState();
}

class CameraViewState extends State<CameraView>
    with WidgetsBindingObserver, CameraViewControlsDelegate {
  late CameraController controller;

  @override
  void initState() {
    super.initState();
    controller = CameraController(
      widget.description,
      widget.resolutionPreset,
      enableAudio: false,
      imageFormatGroup: ImageFormatGroup.jpeg,
    );
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      _updatePreviewSize();
      controller.lockCaptureOrientation(DeviceOrientation.portraitUp);
      setState(() {});
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (!mounted) return;

    // App state changed before we got the chance to initialize.
    if (!controller.value.isInitialized) {
      return;
    }

    if (state == AppLifecycleState.inactive) {
      controller.dispose();
    } else if (state == AppLifecycleState.resumed) {
      onNewCameraSelected(controller.description);
    }
  }

  void _updatePreviewSize() {
    /// previewSize is size of each image frame captured by controller
    ///
    /// 352x288 on iOS, 240p (320x240) on Android with ResolutionPreset.low
    Size previewSize = controller.value.previewSize ?? Size.zero;

    /// previewSize is size of raw input image to the model
    CameraViewSingleton.inputImageSize = previewSize;

    // the display width of image on screen is
    // same as screenWidth while maintaining the aspectRatio
    Size screenSize = MediaQuery.of(context).size;

    CameraViewSingleton.screenSize = screenSize;

    CameraViewSingleton.ratio = screenSize.width / previewSize.height;
  }

  Future<void> onNewCameraSelected(CameraDescription description) async {
    controller.dispose();
    controller = CameraController(
      description,
      widget.resolutionPreset,
      enableAudio: false,
      imageFormatGroup: ImageFormatGroup.bgra8888,
    );

    // If the controller is updated then update the UI.
    controller.addListener(() {
      if (mounted) setState(() {});
      if (controller.value.hasError) {
        AppSnackbar.of(context).error(
          'Camera error ${controller.value.errorDescription}',
        );
      }
    });

    try {
      await controller.initialize();
      _updatePreviewSize();
    } on CameraException catch (e) {
      _showCameraException(e);
    }

    controller.lockCaptureOrientation(DeviceOrientation.portraitUp);

    if (mounted) {
      setState(() {});
    }

    _onRecreated?.call();
  }

  void _showCameraException(CameraException e) {
    logger.warning('Error ${e.code} ${e.description}', e);
    AppSnackbar.of(context).error('Error: ${e.code}\n${e.description}');
  }

  PreviewMode _previewMode = PreviewMode.output;

  @override
  void setPreviewMode(PreviewMode value) {
    setState(() {
      _previewMode = value;
    });
  }

  @override
  void startImageStream(onLatestImageAvailable onAvailable) {
    controller.startImageStream(onAvailable);
  }

  @override
  void stopImageStream() {
    controller.stopImageStream();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Container();
    }
    if (_previewMode == PreviewMode.camera) {
      return CameraPreview(controller);
    }
    return widget.output ?? nil;
  }
}

mixin CameraViewControlsDelegate {
  void setPreviewMode(PreviewMode value);

  void startImageStream(onLatestImageAvailable onAvailable);

  void stopImageStream();

  void Function()? _onRecreated;

  void setOnRecreateCallback(void Function() onRecreate) {
    _onRecreated = onRecreate;
  }
}

enum PreviewMode {
  camera,
  output,
}
