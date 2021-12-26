import 'dart:convert';
import 'dart:isolate';

import 'package:camera/camera.dart';
import 'package:cat/src/ui/widget/camera_view.dart';
import 'package:cat/src/utils/isolate.dart';
import 'package:magnific_core/magnific_core.dart';
import 'package:tflite_flutter/tflite_flutter.dart';

class ViewComputer {
  ViewComputer(this.controls, this.interpreter);

  final CameraViewControlsDelegate controls;
  final Interpreter interpreter;

  void attach() async {
    // Spawn a new isolate
    _isolateUtils = IsolateUtils();
    await _isolateUtils!.start();

    controls.startImageStream(_onCameraImage);
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
    final isolateData = IsolateData(
      image,
      interpreter.address,
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

    logger.config('Inference completed in $uiThreadInferenceElapsedTime');
  }

  /// Instance of [IsolateUtils]
  IsolateUtils? _isolateUtils;

  /// Runs inference in another isolate
  Future<Map<String, dynamic>> inference(IsolateData isolateData) async {
    final responsePort = ReceivePort();
    _isolateUtils?.sendPort?.send(
      isolateData..responsePort = responsePort.sendPort,
    );
    var results = await responsePort.first;
    return results;
  }

  void _onControllerChange() {
    controls.startImageStream(_onCameraImage);
  }

  void dispose() {
    controls.stopImageStream();
  }
}
