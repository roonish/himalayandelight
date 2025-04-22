import 'package:flutter/material.dart';

class AppColor {
  const AppColor(Color color);

  static const Color ratingColor = Color(0xFFF1B53A);
  static const Color blackColor = Color(0xFF000000);
  static Color transparentColor = AppColor.transparentColor;

  // Light Themes
  static const Color backgroundColor = Color(0xFFF9F9F9);

  // Dark Theme
  static const Color darkBackgroundColor = Color(0xFF393D3E);
  static Color primaryColor = const Color(0xFFfe8766).withOpacity(0.9);
  static const Color textColor = Color(0xFFADADAD);
  static const Color headerColor = Color(0xFFEAEAEA);
  static const Color searchColor = Color(0xFF424749);
  static const Color buttonColor = Color(0xFF525e66);
}
