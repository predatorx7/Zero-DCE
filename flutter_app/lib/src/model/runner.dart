import 'package:image/image.dart';
import 'package:magnific_core/magnific_core.dart';
import 'package:tflite_flutter/tflite_flutter.dart';

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
    } catch (e, s) {
      logger.severe('Failed to load model', e, s);
    }
  }

  void run() {}

  Map<String, dynamic> predict(Image image) {
    throw UnimplementedError();
  }
}
