// ignore_for_file: avoid_print

import 'dart:math';

import 'package:image/image.dart';
import 'package:magnific_core/magnific_core.dart';
import 'package:tflite_flutter/tflite_flutter.dart';
import 'package:tflite_flutter_helper/tflite_flutter_helper.dart';

class Runner {
  final Interpreter interpreter;

  Runner(this.interpreter) {
    _loadModel(interpreter);
  }

  /// Shapes of output tensors
  List<List<int>>? _outputShapes;

  /// Types of output tensors
  List<TfLiteType>? _outputTypes;

  void _loadModel(Interpreter interpreter) {
    try {
      final outputTensors = interpreter.getOutputTensors();
      _outputShapes = List.empty(growable: true);
      _outputTypes = List.empty(growable: true);
      for (var tensor in outputTensors) {
        _outputShapes!.add(tensor.shape);
        _outputTypes!.add(tensor.type);
      }
      print('Output shapes: $_outputShapes');
      print('Output types: $_outputTypes');
    } catch (e, s) {
      print('Failed to load model: \n$e\n$s');
    }
  }

  void run() {}

  Map<int, Object>? predict(Image image) {
    if (_outputShapes == null) {
      print('Output shapes is null');
      return null;
    }
    final inputImage = TensorImage.fromImage(image);
    final processedImage = getProcessedImage(inputImage);

    // TensorBuffers for output tensors
    final outputUselessImage = TensorBufferFloat(_outputShapes![0]);
    final outputAlphaMap = TensorBufferFloat(_outputShapes![1]);

    // Outputs map
    final Map<int, Object> outputs = {
      0: outputUselessImage.buffer,
      1: outputAlphaMap.buffer,
    };

    final input = processedImage.buffer;
    print('input: $input');
    interpreter.runForMultipleInputs([input], outputs);
    print('outputs: $outputs');

    return outputs;
  }

  ImageProcessor? imageProcessor;

  static const int inputSize = 160;

  /// Pre-process the image
  TensorImage getProcessedImage(TensorImage inputImage) {
    // final padSize = max(inputImage.height, inputImage.width);
    imageProcessor ??= ImageProcessorBuilder()
        // .add(ResizeWithCropOrPadOp(padSize, padSize))
        .add(NormalizeOp(0, 255))
        .add(ResizeOp(inputSize, inputSize, ResizeMethod.BILINEAR))
        .build();
    inputImage = imageProcessor!.process(inputImage);
    return inputImage;
  }
}
