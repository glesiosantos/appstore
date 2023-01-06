import 'package:appstore/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final themeData = ThemeData(
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.primaryColor,
    appBarTheme: const AppBarTheme(elevation: 0),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
