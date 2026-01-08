import 'package:flutter/material.dart';
import 'package:iclick_timesheet/core/theme/skin.dart';

extension ThemeExtensions on BuildContext {
  Color color(SkinColor color) {
    final isLight = Theme.of(this).brightness == Brightness.light;
    return Color(isLight ? color.light : color.dark);
  }
}