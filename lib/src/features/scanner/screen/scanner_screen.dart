import 'package:attendance_app/src/core/shared/extensions/extensions.dart';
import 'package:attendance_app/src/core/shared/layout/layout.dart';
import 'package:attendance_app/src/features/attendance/presentation/providers/qr_code_state_provider.dart';
import 'package:attendance_app/src/features/attendance/presentation/widgets/widgets.dart';
import 'package:attendance_app/src/features/scanner/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScannerScreen extends ConsumerWidget {
  const ScannerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final qrCodeState = ref.watch(qrCodeNotifierProvider);

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

                      // QR Code Display or Scanner Frame
                      qrCodeState.when(
                        initial: () => const ScannerFrame(),
                        loading: () =>
                            const Center(child: CircularProgressIndicator()),
                        success: (qrCodeResponse) => QrCodeDisplay(
                          qrCodeResponse: qrCodeResponse,
                          onClose: () =>
                              ref.read(qrCodeNotifierProvider.notifier).reset(),
                        ),
                        error: (message) => Column(
                          children: [
                            const ScannerFrame(),
                            Gaps.gap16,
                            Container(
                              padding: EdgeInsets.all(DoubleSizes.size16),
                              decoration: BoxDecoration(
                                color: context.appColorScheme.errorContainer,
                                borderRadius: BorderRadius.circular(
                                  DoubleSizes.size12,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.error_outline,
                                    color:
                                        context.appColorScheme.onErrorContainer,
                                  ),
                                  Gaps.gap8,
                                  Expanded(
                                    child: Text(
                                      message,
                                      style: context.appTextTheme.bodyMedium
                                          ?.copyWith(
                                            color: context
                                                .appColorScheme
                                                .onErrorContainer,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Generate QR Button or Manual code button
                      qrCodeState.when(
                        initial: () => Column(
                          children: [
                            // Generate QR Button
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton.icon(
                                onPressed: () => ref
                                    .read(qrCodeNotifierProvider.notifier)
                                    .generateCheckInQr(),
                                icon: const Icon(Icons.qr_code),
                                label: const Text('Generar Código QR'),
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                    vertical: DoubleSizes.size16,
                                  ),
                                ),
                              ),
                            ),
                            Gaps.gap16,
                            // Manual code button
                            ManualCodeButton(onPressed: () {}),
                          ],
                        ),
                        loading: () => const SizedBox.shrink(),
                        success: (_) => ManualCodeButton(onPressed: () {}),
                        error: (_) => Column(
                          children: [
                            // Retry button
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton.icon(
                                onPressed: () => ref
                                    .read(qrCodeNotifierProvider.notifier)
                                    .generateCheckInQr(),
                                icon: const Icon(Icons.refresh),
                                label: const Text('Reintentar'),
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                    vertical: DoubleSizes.size16,
                                  ),
                                ),
                              ),
                            ),
                            Gaps.gap16,
                            ManualCodeButton(onPressed: () {}),
                          ],
                        ),
                      ),
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
