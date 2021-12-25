import 'package:cat/src/model/tflite.dart';
import 'package:magnific_core/magnific_core.dart';
import 'package:riverpod/riverpod.dart';
import 'package:tflite_flutter/tflite_flutter.dart' as tfl;
import 'package:tflite_flutter/tflite_flutter.dart';

class ModelInterpretorProvider extends StateNotifier<tfl.Interpreter?> {
  ModelInterpretorProvider() : super(null);

  Future<void> supplyModel(
    String modelName,
  ) async {
    final downloader = ModelDownloader();
    try {
      logger.config('Started to download the "$modelName" Model..');
      final interpreter = await downloader.getModelInterpreter(modelName);
      logger.config('Model download completed');
      state = interpreter;
      Future.microtask(() {
        _loadModel(interpreter);
      });
      logger.config('Model\'s interpreter supplied to the provider');
    } catch (e, s) {
      logger.severe('Failed to download model', e, s);
    }
  }

  /// Shapes of output tensors
  List<List<int>>? _outputShapes;

  /// Types of output tensors
  List<TfLiteType>? _outputTypes;

  void _loadModel(Interpreter interpreter) {
    try {
      final outputTensors = interpreter.getOutputTensors();
      _outputShapes = const [];
      _outputTypes = const [];
      for (var tensor in outputTensors) {
        _outputShapes!.add(tensor.shape);
        _outputTypes!.add(tensor.type);
      }
    } catch (e, s) {
      logger.severe('Failed to load model', e, s);
    }
  }

  @override
  void dispose() {
    state?.close();
    super.dispose();
  }
}

final modelInterpretorProvider =
    StateNotifierProvider<ModelInterpretorProvider, tfl.Interpreter?>((ref) {
  return ModelInterpretorProvider();
});
