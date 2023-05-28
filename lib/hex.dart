import 'package:flutter/material.dart';

extension ColorExtension on String {
  toColor() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

Color colorswitcher(index) {
  if (index == 0 || index == 2 || index == 4) {
    return '105445'.toColor();
  }
  if (index == 6) {
    return 'F14668'.toColor();
  }
  return '6C928A'.toColor();
}

Color colorswitcher2(index) {
  return '105445'.toColor();
}

IconData miasigner(index) {
  if (index == 0) {
    return Icons.settings;
  }
  if (index == 2) {
    return Icons.quiz;
  }
  if (index == 4) return Icons.abc;
  if (index == 6) return Icons.logout;

  return IconData(0);
}

IconData miasigner2(index) {
  if (index == 0) {
    return Icons.language;
  }
  if (index == 1) {
    return Icons.person;
  }
  if (index == 2) return Icons.email_outlined;
  if (index == 3) return Icons.password;

  return IconData(0);
}
