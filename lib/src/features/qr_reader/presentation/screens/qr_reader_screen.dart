import 'dart:convert';

import 'package:attendance_app/src/core/router/router.dart';
import 'package:attendance_app/src/core/shared/extensions/extensions.dart';
import 'package:attendance_app/src/core/shared/layout/layout.dart';
import 'package:attendance_app/src/features/attendance/presentation/providers/confirm_attendance_state_provider.dart';
import 'package:attendance_app/src/features/attendance/presentation/providers/validate_code_state_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QrReaderScreen extends HookConsumerWidget {
  const QrReaderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useMemoized(
      () => MobileScannerController(
        detectionSpeed: DetectionSpeed.noDuplicates,
        returnImage: false,
      ),
    );
    final isScanning = useState(true);
    final currentCode = useState<String?>(null);

    useEffect(() {
      return controller.dispose;
    }, [controller]);

    void validateQrCode(String code, WidgetRef ref) {
      ref
          .read(validateCodeNotifierProvider.notifier)
          .validateCodeWithoutLocation(code);
    }

    void onDetect(BarcodeCapture capture) {
      if (!isScanning.value) return;

      final List<Barcode> barcodes = capture.barcodes;
      if (barcodes.isNotEmpty) {
        final String? code = barcodes.first.rawValue;
        if (code != null && code.isNotEmpty) {
          isScanning.value = false;

          // Extract the actual code to validate and store
          String codeToUse = code;
          try {
            final Map<String, dynamic> qrData = json.decode(code);
            if (qrData.containsKey('code')) {
              codeToUse = qrData['code'];
            }
          } catch (e) {
            // If parsing fails, use the original code as is
            codeToUse = code;
          }

          currentCode.value = codeToUse;

          // Validate the scanned QR code
          validateQrCode(codeToUse, ref);
        }
      }
    }

    void resetScanner() {
      isScanning.value = true;
      currentCode.value = null;
      // Reset the validate code state
      ref.read(validateCodeNotifierProvider.notifier).reset();
      // Reset the confirm attendance state
      ref.read(confirmAttendanceNotifierProvider.notifier).reset();
    }

    void confirmAttendance(String code, WidgetRef ref) {
      ref
          .read(confirmAttendanceNotifierProvider.notifier)
          .confirm(code: code, confirmed: true);
    }

    final validateCodeState = ref.watch(validateCodeNotifierProvider);
    final confirmAttendanceState = ref.watch(confirmAttendanceNotifierProvider);
    final colorScheme = context.appColorScheme;
    final textTheme = context.appTextTheme;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Leer QR',
          style: TextStyle(color: colorScheme.onSecondary),
        ),
        iconTheme: IconThemeData(color: colorScheme.onSecondary),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              controller.torchEnabled ? Icons.flash_on : Icons.flash_off,
            ),
            color: colorScheme.onSecondary,
            onPressed: () => controller.toggleTorch(),
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: colorScheme.onSecondary),
          onPressed: () => context.pop(),
        ),
      ),
      body: Stack(
        children: [
          // Camera view
          if (isScanning.value)
            MobileScanner(controller: controller, onDetect: onDetect),

          // Overlay with scanning frame
          if (isScanning.value)
            Container(
              decoration: ShapeDecoration(
                shape: QrScannerOverlayShape(
                  borderColor: colorScheme.surface,
                  borderRadius: 10,
                  borderLength: 30,
                  borderWidth: 5,
                  cutOutSize: 300,
                ),
              ),
            ),

          // Instructions at the bottom
          if (isScanning.value)
            Positioned(
              top: 100,
              left: 0,
              right: 0,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: colorScheme.tertiary,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  'Coloca el código QR dentro del marco para escanearlo',
                  style: textTheme.bodyMedium?.copyWith(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

          if (isScanning.value)
            Positioned(
              bottom: 50,
              left: 0,
              right: 0,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Text(
                      '¿Tienes dificultades para escanear el código QR?',
                      style: textTheme.bodyMedium?.copyWith(
                        color: colorScheme.surface,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    TextButton(
                      onPressed: () {
                        context.pushNamed(Routes.validateCode.name);
                      },
                      child: Row(
                        children: [
                          Text(
                            'INGRESAR CÓDIGO MANUAL',
                            style: textTheme.bodyLarge?.copyWith(
                              color: colorScheme.secondary,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.navigate_next,
                            color: colorScheme.secondary,
                            size: 32,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

          // Result overlay
          if (!isScanning.value)
            Container(
              color: Colors.black.withValues(alpha: 0.8),
              child: Center(
                child: Container(
                  margin: const EdgeInsets.all(24),
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: colorScheme.surface,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      validateCodeState.when(
                        initial: () => Column(
                          children: [
                            const CircularProgressIndicator(),
                            Gaps.gap16,
                            Text(
                              'Validando código...',
                              style: textTheme.titleMedium,
                            ),
                          ],
                        ),
                        loading: () => Column(
                          children: [
                            const CircularProgressIndicator(),
                            Gaps.gap16,
                            Text(
                              'Validando código...',
                              style: textTheme.titleMedium,
                            ),
                          ],
                        ),
                        success: (response) => Column(
                          spacing: DoubleSizes.size16,
                          children: [
                            Icon(
                              Icons.check_circle,
                              color: Colors.green,
                              size: 64,
                            ),
                            Text(
                              'Código válido',
                              style: textTheme.titleLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              response.message ??
                                  'Código validado correctamente',
                              style: textTheme.bodyMedium,
                              textAlign: TextAlign.center,
                            ),
                            if (response.data?.employee.fullName != null) ...[
                              Text(
                                '${response.data?.employee.fullName}',
                                style: textTheme.bodyLarge?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                            if (response.data?.action != null) ...[
                              response.data?.action == 'CHECK_IN'
                                  ? Icon(
                                      Icons.login,
                                      size: 64,
                                      color: Colors.green.shade700,
                                    )
                                  : Icon(
                                      Icons.logout,
                                      color: colorScheme.error,
                                      size: 64,
                                    ),
                              Text(
                                'Tipo: ${response.data?.action == 'CHECK_IN' ? 'INGRESO' : 'SALIDA'}',
                                style: textTheme.bodyMedium,
                              ),
                            ],
                          ],
                        ),
                        error: (error) {
                          return Column(
                            children: [
                              Icon(
                                Icons.error,
                                color: colorScheme.error,
                                size: 64,
                              ),
                              Gaps.gap16,
                              Text(
                                'Error al validar',
                                style: textTheme.titleLarge?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: colorScheme.error,
                                ),
                              ),
                              Gaps.gap8,
                              Text(
                                error,
                                style: textTheme.bodyMedium,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          );
                        },
                      ),
                      Gaps.gap24,
                      // Confirm attendance - Solo mostrar si no está confirmada exitosamente
                      validateCodeState.when(
                        initial: () => const SizedBox.shrink(),
                        loading: () => const SizedBox.shrink(),
                        success: (response) => confirmAttendanceState.when(
                          initial: () => Column(
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: colorScheme.primary,
                                  foregroundColor: colorScheme.onPrimary,
                                  minimumSize: const Size(double.infinity, 48),
                                ),
                                onPressed: () {
                                  if (currentCode.value != null) {
                                    confirmAttendance(currentCode.value!, ref);
                                  }
                                },
                                child: const Text('Confirmar'),
                              ),
                            ],
                          ),
                          loading: () => Column(
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: colorScheme.primary,
                                  foregroundColor: colorScheme.onPrimary,
                                  minimumSize: const Size(double.infinity, 48),
                                ),
                                onPressed: null,
                                child: const SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Gaps.gap8,
                              Text(
                                'Confirmando asistencia...',
                                style: textTheme.bodySmall?.copyWith(
                                  color: colorScheme.primary,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ],
                          ),
                          success: (confirmResponse) =>
                              const SizedBox.shrink(), // Ocultar botón cuando ya está confirmada
                          error: (errorMessage) => Column(
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: colorScheme.primary,
                                  foregroundColor: colorScheme.onPrimary,
                                  minimumSize: const Size(double.infinity, 48),
                                ),
                                onPressed: () {
                                  if (currentCode.value != null) {
                                    confirmAttendance(currentCode.value!, ref);
                                  }
                                },
                                child: const Text('Reintentar confirmación'),
                              ),
                            ],
                          ),
                        ),
                        error: (message) => const SizedBox.shrink(),
                      ),

                      // Confirmation result
                      confirmAttendanceState.when(
                        initial: () => const SizedBox.shrink(),
                        loading: () => const SizedBox.shrink(),
                        success: (response) => Container(
                          margin: const EdgeInsets.only(top: 16),
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: colorScheme.secondaryContainer,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            children: [
                              Icon(
                                Icons.check_circle,
                                color: colorScheme.primary,
                                size: 32,
                              ),
                              Gaps.gap8,
                              Text(
                                'Asistencia Confirmada',
                                style: textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: colorScheme.primary,
                                ),
                              ),
                              if (response.data?.message != null) ...[
                                Gaps.gap4,
                                Text(
                                  response.data!.message,
                                  style: textTheme.bodyMedium,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ],
                          ),
                        ),
                        error: (message) => Container(
                          margin: const EdgeInsets.only(top: 16),
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: colorScheme.errorContainer,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            children: [
                              Icon(
                                Icons.error,
                                color: colorScheme.error,
                                size: 32,
                              ),
                              Gaps.gap8,
                              Text(
                                'Error al confirmar',
                                style: textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: colorScheme.error,
                                ),
                              ),
                              Gaps.gap4,
                              Text(
                                message,
                                style: textTheme.bodyMedium,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),

                      Gaps.gap48,
                      Row(
                        spacing: DoubleSizes.size4,
                        children: [
                          ElevatedButton.icon(
                            onPressed: resetScanner,
                            style: ElevatedButton.styleFrom(
                              foregroundColor: colorScheme.onSecondary,
                              backgroundColor: colorScheme.secondary,
                            ),
                            icon: const Icon(Icons.refresh),
                            label: const Text('Escanear otro'),
                          ),
                          OutlinedButton.icon(
                            onPressed: () => context.pop(),
                            style: OutlinedButton.styleFrom(
                              foregroundColor: colorScheme.secondary,
                              side: BorderSide(
                                color: colorScheme.secondary,
                                width: 0.5,
                              ),
                            ),
                            icon: const Icon(Icons.close),
                            label: const Text('Cerrar'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

// Custom overlay shape for QR scanner
class QrScannerOverlayShape extends ShapeBorder {
  const QrScannerOverlayShape({
    this.borderColor = Colors.red,
    this.borderWidth = 3.0,
    this.overlayColor = const Color.fromRGBO(0, 0, 0, 80),
    this.borderRadius = 0,
    this.borderLength = 40,
    this.cutOutSize = 250,
  });

  final Color borderColor;
  final double borderWidth;
  final Color overlayColor;
  final double borderRadius;
  final double borderLength;
  final double cutOutSize;

  @override
  EdgeInsetsGeometry get dimensions => const EdgeInsets.all(10);

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return Path()
      ..fillType = PathFillType.evenOdd
      ..addPath(getOuterPath(rect), Offset.zero);
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    Path path = Path()..addRect(rect);
    Path oval = Path()
      ..addRRect(
        RRect.fromRectAndRadius(
          Rect.fromCenter(
            center: rect.center,
            width: cutOutSize,
            height: cutOutSize,
          ),
          Radius.circular(borderRadius),
        ),
      );
    return Path.combine(PathOperation.difference, path, oval);
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
    final width = rect.width;
    final borderWidthSize = width / 2;
    final height = rect.height;
    final borderOffset = borderWidth / 2;
    final mBorderLength = borderLength > cutOutSize / 2 + borderWidth * 2
        ? borderWidthSize / 2
        : borderLength;
    final mCutOutSize = cutOutSize < width ? cutOutSize : width - borderOffset;

    final backgroundPaint = Paint()
      ..color = overlayColor
      ..style = PaintingStyle.fill;

    final borderPaint = Paint()
      ..color = borderColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = borderWidth;

    final boxPaint = Paint()
      ..color = borderColor
      ..style = PaintingStyle.fill
      ..blendMode = BlendMode.dstOut;

    final cutOutRect = Rect.fromLTWH(
      rect.left + width / 2 - mCutOutSize / 2 + borderOffset,
      rect.top + height / 2 - mCutOutSize / 2 + borderOffset,
      mCutOutSize - borderOffset * 2,
      mCutOutSize - borderOffset * 2,
    );

    canvas
      ..saveLayer(rect, backgroundPaint)
      ..drawRect(rect, backgroundPaint)
      ..drawRRect(
        RRect.fromRectAndRadius(cutOutRect, Radius.circular(borderRadius)),
        boxPaint,
      )
      ..restore();

    // Draw corner borders
    final path = Path()
      ..moveTo(cutOutRect.left - borderOffset, cutOutRect.top + mBorderLength)
      ..lineTo(cutOutRect.left - borderOffset, cutOutRect.top + borderRadius)
      ..quadraticBezierTo(
        cutOutRect.left - borderOffset,
        cutOutRect.top - borderOffset,
        cutOutRect.left + borderRadius,
        cutOutRect.top - borderOffset,
      )
      ..lineTo(cutOutRect.left + mBorderLength, cutOutRect.top - borderOffset)
      ..moveTo(cutOutRect.right - mBorderLength, cutOutRect.top - borderOffset)
      ..lineTo(cutOutRect.right - borderRadius, cutOutRect.top - borderOffset)
      ..quadraticBezierTo(
        cutOutRect.right + borderOffset,
        cutOutRect.top - borderOffset,
        cutOutRect.right + borderOffset,
        cutOutRect.top + borderRadius,
      )
      ..lineTo(cutOutRect.right + borderOffset, cutOutRect.top + mBorderLength)
      ..moveTo(
        cutOutRect.right + borderOffset,
        cutOutRect.bottom - mBorderLength,
      )
      ..lineTo(
        cutOutRect.right + borderOffset,
        cutOutRect.bottom - borderRadius,
      )
      ..quadraticBezierTo(
        cutOutRect.right + borderOffset,
        cutOutRect.bottom + borderOffset,
        cutOutRect.right - borderRadius,
        cutOutRect.bottom + borderOffset,
      )
      ..lineTo(
        cutOutRect.right - mBorderLength,
        cutOutRect.bottom + borderOffset,
      )
      ..moveTo(
        cutOutRect.left + mBorderLength,
        cutOutRect.bottom + borderOffset,
      )
      ..lineTo(cutOutRect.left + borderRadius, cutOutRect.bottom + borderOffset)
      ..quadraticBezierTo(
        cutOutRect.left - borderOffset,
        cutOutRect.bottom + borderOffset,
        cutOutRect.left - borderOffset,
        cutOutRect.bottom - borderRadius,
      )
      ..lineTo(
        cutOutRect.left - borderOffset,
        cutOutRect.bottom - mBorderLength,
      );

    canvas.drawPath(path, borderPaint);
  }

  @override
  ShapeBorder scale(double t) {
    return QrScannerOverlayShape(
      borderColor: borderColor,
      borderWidth: borderWidth,
      overlayColor: overlayColor,
    );
  }
}
