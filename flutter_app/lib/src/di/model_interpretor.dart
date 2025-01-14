import 'package:cat/src/model/tflite.dart';
import 'package:magnific_core/magnific_core.dart';
import 'package:riverpod/riverpod.dart';
import 'package:tflite_flutter/tflite_flutter.dart' as tfl;

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
      logger.config('Model\'s interpreter supplied to the provider');
    } catch (e, s) {
      logger.severe('Failed to download model', e, s);
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
