import 'dart:io';
import 'dart:isolate';

import 'package:camera/camera.dart';
import 'package:cat/src/model/runner.dart';
import 'package:image/image.dart' as image_lib;
import 'package:magnific_core/magnific_core.dart';
import 'package:tflite_flutter/tflite_flutter.dart';

import 'image.dart';

/// Manages separate Isolate instance for inference
class IsolateUtils {
  static const String debugName = "InferenceIsolate";

  // ignore: unused_field
  Isolate? _isolate;

  final ReceivePort _receivePort = ReceivePort();

  SendPort? _sendPort;

  SendPort? get sendPort => _sendPort;

  Future<void> start() async {
    _isolate = await Isolate.spawn<SendPort>(
      entryPoint,
      _receivePort.sendPort,
      debugName: debugName,
    );

    _sendPort = await _receivePort.first;
  }

  static void entryPoint(SendPort sendPort) async {
    final port = ReceivePort();
    sendPort.send(port.sendPort);

    await for (final IsolateData? isolateData in port) {
      if (isolateData != null) {
        final _runner = Runner(
          Interpreter.fromAddress(isolateData.interpreterAddress),
        );
        image_lib.Image? image = ImageUtils.convertCameraImage(
          isolateData.cameraImage,
        );
        if (image == null) {
          logger.config('Image was null');

          return;
        }

        if (Platform.isAndroid) {
          image = image_lib.copyRotate(image, 90);
        }

        final results = _runner.predict(image);

        isolateData.responsePort?.send(results);
      }
    }
  }
}

/// Bundles data to pass between Isolate
class IsolateData {
  final CameraImage cameraImage;
  final int interpreterAddress;
  final List<String> labels;
  SendPort? responsePort;

  IsolateData(
    this.cameraImage,
    this.interpreterAddress,
    this.labels,
  );
}
