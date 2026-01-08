import 'package:flutter/material.dart';
import 'package:iclick_timesheet/core/theme/dimensions.dart';
import 'package:iclick_timesheet/core/theme/fonts.dart';
import 'package:iclick_timesheet/core/theme/skin.dart';

ThemeData get lightTheme => ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: Colors.white,
    secondary: Colors.white,
    surface: Colors.white,
    error: Color(Skin.error.light),
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Color(Skin.textPrimary.light),
    onError: Colors.white,
  ),
  fontFamily: FontFamily.primaryFont,
  textTheme: TextTheme(
    headlineLarge: TextStyle(
      fontSize: FontSizes.fontSize32,
      fontWeight: FontWeight.bold,
      color: Color(Skin.textPrimary.light),
    ),
    headlineMedium: TextStyle(
      fontSize: FontSizes.fontSize24,
      fontWeight: FontWeight.bold,
      color: Color(Skin.textPrimary.light),
    ),
    headlineSmall: TextStyle(
      fontSize: FontSizes.fontSize20,
      fontWeight: FontWeight.bold,
      color: Color(Skin.textPrimary.light),
    ),
    bodyLarge: TextStyle(
      fontSize: FontSizes.fontSize16,
      fontWeight: FontWeight.normal,
      color: Color(Skin.textPrimary.light),
    ),
    bodyMedium: TextStyle(
      fontSize: FontSizes.fontSize14,
      fontWeight: FontWeight.normal,
      color: Color(Skin.textPrimary.light),
    ),
    bodySmall: TextStyle(
      fontSize: FontSizes.fontSize12,
      fontWeight: FontWeight.normal,
      color: Color(Skin.textSecondary.dark),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(
      vertical: AppDimensions.padding16,
      horizontal: AppDimensions.padding16,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppDimensions.radius16),
      borderSide: BorderSide(color: Color(Skin.border.light)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(Skin.primary.light)),
      borderRadius: BorderRadius.circular(AppDimensions.radius16),
    ),
  ),
  scaffoldBackgroundColor: Colors.white,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Color(Skin.primary.light),
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radius16),
      ),
    ),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Color(Skin.background.light),
    foregroundColor: Color(Skin.textPrimary.light),
    elevation: 0,
  ),
  dividerTheme: DividerThemeData(
    color: Color(Skin.divider.light),
    thickness: 1,
    space: 1,
  ),
);

ThemeData get darkTheme => ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme(
    brightness: Brightness.dark,
    primary: Color(Skin.primary.dark),
    secondary: Color(Skin.secondary.dark),
    surface: Color(Skin.surface.dark),
    error: Color(Skin.error.dark),
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Color(Skin.textPrimary.dark),
    onError: Colors.white,
  ),
  fontFamily: FontFamily.primaryFont,
  textTheme: TextTheme(
    headlineLarge: TextStyle(
      fontSize: FontSizes.fontSize32,
      fontWeight: FontWeights.bold700,
      color: Color(Skin.textPrimary.dark),
    ),
    headlineMedium: TextStyle(
      fontSize: FontSizes.fontSize24,
      fontWeight: FontWeight.bold,
      color: Color(Skin.textPrimary.dark),
    ),
    headlineSmall: TextStyle(
      fontSize: FontSizes.fontSize20,
      fontWeight: FontWeight.bold,
      color: Color(Skin.textPrimary.dark),
    ),
    bodyLarge: TextStyle(
      fontSize: FontSizes.fontSize16,
      fontWeight: FontWeight.normal,
      color: Color(Skin.textPrimary.dark),
    ),
    bodyMedium: TextStyle(
      fontSize: FontSizes.fontSize14,
      fontWeight: FontWeight.normal,
      color: Color(Skin.textPrimary.dark),
    ),
    bodySmall: TextStyle(
      fontSize: FontSizes.fontSize12,
      fontWeight: FontWeight.normal,
      color: Color(Skin.textSecondary.dark),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(
      vertical: AppDimensions.padding16,
      horizontal: AppDimensions.padding16,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppDimensions.radius16),
      borderSide: BorderSide(color: Color(Skin.border.dark)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(Skin.primary.dark)),
      borderRadius: BorderRadius.circular(AppDimensions.radius16),
    ),
  ),
  scaffoldBackgroundColor: Color(Skin.background.dark),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Color(Skin.primary.dark),
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radius16),
      ),
    ),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Color(Skin.background.dark),
    foregroundColor: Color(Skin.textPrimary.dark),
    elevation: 0.5,
  ),
  dividerTheme: DividerThemeData(
    color: Color(Skin.divider.dark),
    thickness: 1,
    space: 1,
  ),
);
