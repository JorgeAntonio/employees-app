import 'package:flutter/material.dart';

class Palette {
  const Palette._();

  // Base colors
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color transparent = Colors.transparent;

  // Light mode colors
  static const Color lightText = Color(0xFF050316);
  static const Color lightBackground = Color(0xFFFBFBFE);
  static const Color lightPrimary = Color(0xFF3C61DD);
  static const Color lightSecondary = Color(0xFF081B5E);
  static const Color lightAccent = Color(0xFF443DFF);

  // Dark mode colors
  static const Color darkText = Color(0xFFEAE9FC);
  static const Color darkBackground = Color(0xFF010104);
  static const Color darkPrimary = Color(0xFF2248C3);
  static const Color darkSecondary = Color(0xFFA1B4F7);
  static const Color darkAccent = Color(0xFF0600C2);

  // Semantic colors (shared between modes)
  static const Color error = Color(0xFFE5484D);
  static const Color success = Color(0xFF30A46C);
  static const Color warning = Color(0xFFFFA800);
  static const Color info = Color(0xFF0088FF);

  // Neutral colors
  static const Color gray = Color(0xFFF5F5F5);

  // Color lists for reference
  static const lightColors = [
    white,
    black,
    transparent,
    lightText,
    lightBackground,
    lightPrimary,
    lightSecondary,
    lightAccent,
    error,
    success,
    warning,
    info,
    gray,
  ];

  static const darkColors = [
    white,
    black,
    transparent,
    darkText,
    darkBackground,
    darkPrimary,
    darkSecondary,
    darkAccent,
    error,
    success,
    warning,
    info,
    gray,
  ];
}
