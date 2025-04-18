import 'package:flutter/material.dart';

class ThemeConstants {
  // Colors
  static const Color backgroundColor = Color(0xFF121212);
  static const Color surfaceColor = Color(0xFF1E1E1E);
  static const Color primaryColor = Color(0xFF00BCD4); // Cyan
  static const Color accentColor = Color(0xFF2196F3); // Electric Blue
  static const Color textColor = Colors.white;
  static const Color secondaryTextColor = Color(0xFFB3B3B3);

  // Text Styles
  static const TextStyle headingStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: textColor,
  );

  static const TextStyle bodyStyle = TextStyle(
    fontSize: 16,
    color: textColor,
  );

  static const TextStyle captionStyle = TextStyle(
    fontSize: 14,
    color: secondaryTextColor,
  );

  // Padding
  static const double defaultPadding = 16.0;
  static const double largePadding = 24.0;

  // Border Radius
  static const double defaultBorderRadius = 12.0;
  static const double largeBorderRadius = 16.0;

  // Animation Duration
  static const Duration defaultAnimationDuration = Duration(milliseconds: 300);
  static const Duration splashScreenDuration = Duration(seconds: 3);
}
