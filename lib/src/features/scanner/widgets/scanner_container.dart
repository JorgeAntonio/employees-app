import 'package:attendance_app/src/core/shared/extensions/extensions.dart';
import 'package:attendance_app/src/core/shared/layout/layout.dart';
import 'package:flutter/material.dart';

class ScannerContainer extends StatelessWidget {
  final Widget child;

  const ScannerContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth * 0.8,
      height: context.screenHeight * 0.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(DoubleSizes.size24),
        color: context.appColorScheme.surfaceContainerHighest,
        border: Border.all(
          color: context.appColorScheme.outlineVariant.withValues(alpha: 0.3),
          width: 1,
        ),
      ),
      child: child,
    );
  }
}
