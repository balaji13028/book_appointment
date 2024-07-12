import 'package:flutter/material.dart';

class TextStyles {
  TextStyle titleMedium({Color color = Colors.white}) {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  TextStyle titleSmall({Color color = Colors.white}) {
    return TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: color,
    );
  }

  TextStyle titleLarge({Color color = Colors.white}) {
    return TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }
}
