import 'dart:convert';

import 'package:camera/camera.dart';
import 'package:cat/src/ui/widget/camera_view.dart';
import 'package:cat/src/utils/isolate.dart';
import 'package:magnific_core/magnific_core.dart';
import 'package:tflite_flutter/tflite_flutter.dart';

class XComputer {
  XComputer(this.controls, this.interpreter);

  final CameraViewControlsDelegate controls;
  final Interpreter interpreter;

  void attach() async {
    controls.setOnRecreateCallback(_onControllerChange);
  }

  bool _predicting = false;

  void _onCameraImage(CameraImage image) async {
    if (_predicting) {
      return;
    }
    _predicting = true;

    final uiThreadTimeStart = DateTime.now().millisecondsSinceEpoch;

    // Data to be passed to inference isolate
    final isolateData = ComputationData(
      image,
      [],
    );

    // We could have simply used the compute method as well however
    // it would be as in-efficient as we need to continuously passing data
    // to another isolate.

    /// perform inference in separate isolate
    final inferenceResults = await inference(
      isolateData,
    );

    logger.config('inferenceResults: ${json.encode(inferenceResults)}');

    final uiThreadInferenceElapsedTime =
        DateTime.now().millisecondsSinceEpoch - uiThreadTimeStart;

    logger.config('Inference completed in $uiThreadInferenceElapsedTime ms');
  }

  /// Runs inference in another isolate
  Future<Map<int, Object>> inference(ComputationData isolateData) {
    final computer = ComputationUtils();
    return computer.compute(isolateData, interpreter);
  }

  void _onControllerChange() {
    controls.startImageStream(_onCameraImage);
  }

  void dispose() {
    controls.stopImageStream();
  }
}
