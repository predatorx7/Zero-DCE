import 'dart:ui';

/// Singleton to record size related data
class CameraViewSingleton {
  static double ratio = 1;
  static Size screenSize = Size.zero;
  static Size inputImageSize = Size.zero;
  static Size get actualPreviewSize {
    return Size(screenSize.width, screenSize.width * ratio);
  }
}
