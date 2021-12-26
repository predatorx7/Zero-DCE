import 'dart:io';

import 'package:camera/camera.dart';
import 'package:cat/src/model/runner.dart';
import 'package:image/image.dart' as image_lib;
import 'package:magnific_core/magnific_core.dart';
import 'package:tflite_flutter/tflite_flutter.dart';
import 'package:worker_manager/worker_manager.dart';

import 'image.dart';

/// Manages separate Isolate instance for inference
class ComputationUtils {
  Cancelable<Map<int, Object>> compute(
    ComputationData isolateData,
    Interpreter interpreter,
  ) {
    final executor = Executor();
    return executor.execute(
      arg1: isolateData,
      arg2: interpreter.address,
      fun2: _run,
    );
  }

  static Map<int, Object> _run(
    ComputationData isolateData,
    int interpreterAddress,
  ) {
    final _runner = Runner(
      Interpreter.fromAddress(interpreterAddress),
    );
    image_lib.Image? image = ImageUtils.convertCameraImage(
      isolateData.cameraImage,
    );
    if (image == null) {
      return {};
    }

    if (Platform.isAndroid) {
      image = image_lib.copyRotate(image, 90);
    }

    return _runner.predict(image) ?? {};
  }
}

/// Bundle data to pass between Isolate
class ComputationData {
  final CameraImage cameraImage;
  final List<String> labels;

  const ComputationData(
    this.cameraImage,
    this.labels,
  );
}
