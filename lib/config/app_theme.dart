import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../core/utils/app_colors.dart';

ThemeData appTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      titleTextStyle: const TextStyle(fontSize: 23.0, color: Colors.tealAccent),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppColors.primary,
        statusBarBrightness: Brightness.light,
      ),
    ),
    textTheme: TextTheme(
      bodySmall: TextStyle(color: AppColors.hint, fontSize: 17),
      bodyMedium:
          const TextStyle(color: Colors.white, fontSize: 16, letterSpacing: 1),
      bodyLarge: const TextStyle(color: Colors.red, fontSize: 10),
    ),
  );
}
