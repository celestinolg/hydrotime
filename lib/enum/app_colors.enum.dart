import 'package:flutter/material.dart';

enum AppColors {
  primary(0xFF2A2F58),
  secondary(0xFF0E1021),
  background(0xFF020314),
  text(0xFFFFFFFF);

  final int colorValue;
  const AppColors(this.colorValue);

  Color get color => Color(colorValue);
}

// void main() {
//   Color primaryColor = AppColors.primary.color;
//   print(primaryColor); // Output: Color(0xff6200ea)
// }
