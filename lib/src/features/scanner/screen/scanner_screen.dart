import 'package:attendance_app/src/core/shared/extensions/extensions.dart';
import 'package:attendance_app/src/core/shared/layout/layout.dart';
import 'package:attendance_app/src/features/scanner/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ScannerScreen extends StatelessWidget {
  const ScannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appColorScheme.surface,
      appBar: AppBar(
        title: const Text('Registrar asistencia'),
        centerTitle: true,
        elevation: 0,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: SafeArea(
                child: Padding(
                  padding: EdgeInsets.all(DoubleSizes.size24),
                  child: Column(
                    spacing: DoubleSizes.size24,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Instructions section
                      const ScannerInstructions(),

                      // Modern QR Scanner frame
                      const ScannerFrame(),

                      // Enhanced scanning status
                      // const ScannerStatus(),

                      // Manual code button
                      ManualCodeButton(onPressed: () {}),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
