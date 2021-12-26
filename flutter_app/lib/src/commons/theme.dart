import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'type.dart';

class AppTheme {
  static ThemeData regular = ThemeData(
    primarySwatch: Colors.deepPurple,
    colorScheme:
        ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple).copyWith(
      primary: const Color(0xFF6750A4),
      onPrimary: Colors.white,
      secondary: const Color(0xff625b71),
      onSecondary: Colors.white,
      surface: const Color(0xfffffbfe),
      onSurface: const Color(0xff1c1b1f),
      error: const Color(0xFFba1b1b),
      onError: Colors.white,
      brightness: Brightness.light,
      background: const Color(0xFFfcfdf7),
      onBackground: const Color(0xFF1a1c19),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 21,
      ),
      foregroundColor: Colors.white,
      systemOverlayStyle: SystemUiOverlayStyle.light,
    ),
    tabBarTheme: TabBarTheme(
      labelStyle: AppTextTheme.textTheme.bodyText1!.copyWith(
        fontWeight: FontWeight.bold,
      ),
    ),
    primaryTextTheme: AppTextTheme.textTheme,
    textTheme: AppTextTheme.textTheme,
  );
}
