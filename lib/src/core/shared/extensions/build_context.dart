import 'package:flutter/material.dart';

extension FlutterAppThemeX on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get appTextTheme => theme.textTheme;
  ColorScheme get appColorScheme => theme.colorScheme;
}
