import 'package:attendance_app/src/core/shared/extensions/build_context.dart';
import 'package:flutter/material.dart';

extension FlutterAppTextThemeX on BuildContext {
  TextStyle get customAppBarTitle =>
      appTextTheme.titleLarge?.copyWith(fontSize: 16) ??
      const TextStyle(fontSize: 16);
}
