import 'package:attendance_app/src/core/shared/layout/layout.dart';
import 'package:flutter/material.dart';

class ScannerInstructions extends StatelessWidget {
  const ScannerInstructions({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return Column(
      children: [
        Text(
          'Escanea el código QR',
          style: textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: colorScheme.onSurface,
          ),
          textAlign: TextAlign.center,
        ),
        Gaps.gap12,
        Text(
          'Asegúrate de que el código QR esté dentro del marco para registrar tu asistencia.',
          style: textTheme.bodyLarge?.copyWith(
            color: colorScheme.onSurfaceVariant,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
