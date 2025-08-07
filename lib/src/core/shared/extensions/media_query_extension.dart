import 'package:flutter/material.dart';

extension FlutterAppMediaQueryX on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  double get screenHeight => mediaQuery.size.height;
  double get screenWidth => mediaQuery.size.width;
  Size get size => mediaQuery.size;
  double get height => size.height;
  double get width => size.width;
  EdgeInsets get padding => mediaQuery.padding;
  bool get isDesktop => width >= 1440;
  bool get isTablet => width >= 650 && width < 1440;
  bool get isMobile => width < 650;
}
