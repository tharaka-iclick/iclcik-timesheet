import 'package:flutter/material.dart';

typedef SkinColor = ({int dark, int light});

class Skin {
  static SkinColor primary = (dark: 0xFF064DB7, light: 0xFF0D6EFD);

  static SkinColor secondary = (dark: 0xFF7697FE, light: 0xFF7697FE);

  static SkinColor secondaryLight = (dark: 0xFFB1C0FE, light: 0xFFB1C0FE);

  static SkinColor background = (dark: 0xFF01133A, light: 0xFFB1C0FE);

  static SkinColor backgroundLight = (dark: 0xFF022F75, light: 0xFFF5F5F5);

  static SkinColor surface = ( dark: 0xFF01133A, light: 0xFFFFFFFF,);

  static SkinColor textPrimary = (dark: 0xFFE5E9FF, light: 0xFF212121);

  static SkinColor textSecondary = (dark: 0xFFBDBDBD, light: 0xFF616161);

  static SkinColor success = (dark: 0xFF4CAF50, light: 0xFF4CAF50);

  static SkinColor warning = (dark: 0xFFFFB74D, light: 0xFFFF9800);

  static SkinColor error = (dark: 0xFFF44336, light: 0xFFF44336);

  static SkinColor info = (dark: 0xFF0D6EFD, light: 0xFF0D6EFD);

  static SkinColor border = (dark: 0xFF0D6EFD, light: 0xFFB1C0FE);

  static SkinColor divider = (dark: 0xFF0D6EFD, light: 0xFFB1C0FE);

  static SkinColor shadow = (dark: 0x1A0D6EFD, light: 0x1A0D6EFD);
}
