import 'colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData defaultThemeData() {
    return ThemeData(
        primaryColor: AppColors.primaryColor,
        accentColor: AppColors.fontColor,
        backgroundColor: AppColors.primaryColor);
  }
}
