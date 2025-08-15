import 'package:attendance_app/src/core/shared/extensions/extensions.dart';
import 'package:attendance_app/src/core/shared/layout/layout.dart';
import 'package:attendance_app/src/features/attendance/presentation/providers/qr_code_state_provider.dart';
import 'package:attendance_app/src/features/attendance/presentation/widgets/widgets.dart';
import 'package:attendance_app/src/features/scanner/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScannerScreen extends ConsumerStatefulWidget {
  const ScannerScreen({super.key});

  @override
  ConsumerState<ScannerScreen> createState() => _ScannerScreenState();
}

class _ScannerScreenState extends ConsumerState<ScannerScreen> {
  bool _isCheckIn = true; // true for check-in, false for check-out

  @override
  Widget build(BuildContext context) {
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

                      // Check-in/Check-out Toggle
                      Container(
                        decoration: BoxDecoration(
                          color: context.appColorScheme.surfaceContainerHighest,
                          borderRadius: BorderRadius.circular(
                            DoubleSizes.size12,
                          ),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () => setState(() => _isCheckIn = true),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    vertical: DoubleSizes.size12,
                                  ),
                                  decoration: BoxDecoration(
                                    color: _isCheckIn
                                        ? context.appColorScheme.primary
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(
                                      DoubleSizes.size12,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.login,
                                        color: _isCheckIn
                                            ? context.appColorScheme.onPrimary
                                            : context
                                                  .appColorScheme
                                                  .onSurfaceVariant,
                                        size: 20,
                                      ),
                                      Gaps.gap8,
                                      Text(
                                        'Entrada',
                                        style: context.appTextTheme.bodyMedium
                                            ?.copyWith(
                                              color: _isCheckIn
                                                  ? context
                                                        .appColorScheme
                                                        .onPrimary
                                                  : context
                                                        .appColorScheme
                                                        .onSurfaceVariant,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () => setState(() => _isCheckIn = false),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    vertical: DoubleSizes.size12,
                                  ),
                                  decoration: BoxDecoration(
                                    color: !_isCheckIn
                                        ? context.appColorScheme.primary
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(
                                      DoubleSizes.size12,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.logout,
                                        color: !_isCheckIn
                                            ? context.appColorScheme.onPrimary
                                            : context
                                                  .appColorScheme
                                                  .onSurfaceVariant,
                                        size: 20,
                                      ),
                                      Gaps.gap8,
                                      Text(
                                        'Salida',
                                        style: context.appTextTheme.bodyMedium
                                            ?.copyWith(
                                              color: !_isCheckIn
                                                  ? context
                                                        .appColorScheme
                                                        .onPrimary
                                                  : context
                                                        .appColorScheme
                                                        .onSurfaceVariant,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

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
                                onPressed: () {
                                  if (_isCheckIn) {
                                    ref
                                        .read(qrCodeNotifierProvider.notifier)
                                        .generateCheckInQr();
                                  } else {
                                    ref
                                        .read(qrCodeNotifierProvider.notifier)
                                        .generateCheckOutQr();
                                  }
                                },
                                icon: Icon(
                                  _isCheckIn ? Icons.login : Icons.logout,
                                ),
                                label: Text(
                                  _isCheckIn
                                      ? 'Generar QR de Entrada'
                                      : 'Generar QR de Salida',
                                ),
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
                                onPressed: () {
                                  if (_isCheckIn) {
                                    ref
                                        .read(qrCodeNotifierProvider.notifier)
                                        .generateCheckInQr();
                                  } else {
                                    ref
                                        .read(qrCodeNotifierProvider.notifier)
                                        .generateCheckOutQr();
                                  }
                                },
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
