import 'package:flutter/material.dart';
import 'package:project_init/constants/app_colors.dart';

class AppTheme {
  static ThemeData appTheme = ThemeData(
    fontFamily: 'HelveticaNeue',
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryDark,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 12),
        shape: const RoundedRectangleBorder(),
        backgroundColor: AppColors.primaryDark,
        foregroundColor: AppColors.colorWhite,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        backgroundColor: AppColors.primaryDark,
        foregroundColor: AppColors.colorWhite,
        padding: const EdgeInsets.symmetric(horizontal: 12),
      ),
    ),
    scaffoldBackgroundColor: AppColors.colorWhite,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primaryYellow,
      foregroundColor: AppColors.primaryDark,
    ),
  );
}
