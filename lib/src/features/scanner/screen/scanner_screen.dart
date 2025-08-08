import 'package:attendance_app/src/core/shared/layout/layout.dart';
import 'package:attendance_app/src/features/scanner/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ScannerScreen extends StatelessWidget {
  const ScannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        title: const Text('Registrar asistencia'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(DoubleSizes.size24),
            child: Column(
              children: [
                // Instructions section
                const ScannerInstructions(),

                Gaps.gap48,

                // Enhanced QR Scanner container
                ScannerContainer(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Modern QR Scanner frame
                      const ScannerFrame(),

                      const SizedBox(height: 32),

                      // Enhanced scanning status
                      const ScannerStatus(),
                    ],
                  ),
                ),

                const SizedBox(height: 32),

                // Manual code button
                ManualCodeButton(onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
