import 'package:firebase_ml_model_downloader/firebase_ml_model_downloader.dart';
import 'package:tflite_flutter/tflite_flutter.dart' as tfl;

class RemoteModelNames {
  static const lightWeight26 = 'light_weight_26';
  static const lightWeight18 = 'light_weight_18';
}

class ModelDownloader {
  Future<List<FirebaseCustomModel>> downloadedModels() {
    return FirebaseModelDownloader.instance.listDownloadedModels();
  }

  Future<FirebaseCustomModel> getModel(String modelName) {
    final conditions = FirebaseModelDownloadConditions(
      // Download whilst connected to cellular data
      iosAllowsCellularAccess: true,
      // Allow downloading in the background
      iosAllowsBackgroundDownloading: true,
      // Only download whilst charging
      androidChargingRequired: false,
      // Only download whilst on Wifi
      androidWifiRequired: false,
      // Only download whilst the device is idle
      androidDeviceIdleRequired: false,
    );
    return FirebaseModelDownloader.instance.getModel(
      modelName,
      FirebaseModelDownloadType.localModelUpdateInBackground,
      conditions,
    );
  }

  Future<tfl.Interpreter> getModelInterpreter(String modelName) async {
    final model = await getModel(modelName);
    final _options = tfl.InterpreterOptions();
    _options.useMetalDelegateForIOS = true;
    _options.useNnApiForAndroid = true;
    return tfl.Interpreter.fromFile(model.file, options: _options);
  }
}
