import 'package:attendance_app/src/core/shared/layout/layout.dart';
import 'package:flutter/material.dart';

class ManualCodeButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const ManualCodeButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: DoubleSizes.size56,
      child: FilledButton.icon(
        onPressed: onPressed,
        icon: const Icon(Icons.keyboard_rounded),
        label: const Text('Ingresar código manualmente'),
      ),
    );
  }
}
