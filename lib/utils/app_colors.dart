import 'package:flutter/material.dart';

class AppColors {
  static const Color purpleColor = Color(0xff6B5AE0);
  static const Color greenColor = Color(0xff5AE0AE);
  static const Color lightBackgroundColor = Color(0xffF8F7FE);
  static const Color footerColor = Color(0xff1D1933);
  static const Color glassEffectColor = Color(0xffD9D9D9); //15%
  final Shader textGradient = const LinearGradient(colors: [
    Color(0xff59DFAD),
    Color(0xffADA1FF),
  ]).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
}
