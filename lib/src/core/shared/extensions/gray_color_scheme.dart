import 'package:flutter/material.dart';

extension CustomColorScheme on ColorScheme {
  Color get gray => const Color(0xff808080);
  Color get grayLight => brightness == Brightness.light
      ? const Color(0xffe0e0e0)
      : const Color(0xff9e9e9e);
  Color get grayDark => brightness == Brightness.light
      ? const Color(0xff424242)
      : const Color(0xff212121);
}
