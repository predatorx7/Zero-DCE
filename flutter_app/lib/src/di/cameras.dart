import 'package:camera/camera.dart';
import 'package:riverpod/riverpod.dart';

final availableCamerasProvider = FutureProvider((ref) {
  return availableCameras();
});
