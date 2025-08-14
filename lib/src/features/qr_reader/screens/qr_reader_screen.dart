import 'dart:convert';

import 'package:attendance_app/src/core/shared/extensions/extensions.dart';
import 'package:attendance_app/src/core/shared/layout/layout.dart';
import 'package:attendance_app/src/features/attendance/presentation/providers/validate_code_state_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QrReaderScreen extends ConsumerStatefulWidget {
  const QrReaderScreen({super.key});

  @override
  ConsumerState<QrReaderScreen> createState() => _QrReaderScreenState();
}

class _QrReaderScreenState extends ConsumerState<QrReaderScreen> {
  late MobileScannerController _controller;
  bool _isScanning = true;

  @override
  void initState() {
    super.initState();
    _controller = MobileScannerController(
      detectionSpeed: DetectionSpeed.noDuplicates,
      returnImage: false,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onDetect(BarcodeCapture capture) {
    if (!_isScanning) return;

    final List<Barcode> barcodes = capture.barcodes;
    if (barcodes.isNotEmpty) {
      final String? code = barcodes.first.rawValue;
      if (code != null && code.isNotEmpty) {
        setState(() {
          _isScanning = false;
        });

        // Validate the scanned QR code
        _validateQrCode(code);
      }
    }
  }

  void _validateQrCode(String code) {
    String codeToValidate = code;

    // Try to parse the QR code as JSON to extract only the 'code' field
    try {
      final Map<String, dynamic> qrData = json.decode(code);
      if (qrData.containsKey('code')) {
        codeToValidate = qrData['code'];
      }
    } catch (e) {
      // If parsing fails, use the original code as is
      codeToValidate = code;
    }

    ref
        .read(validateCodeNotifierProvider.notifier)
        .validateCodeWithoutLocation(codeToValidate);
  }

  void _resetScanner() {
    setState(() {
      _isScanning = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final validateCodeState = ref.watch(validateCodeNotifierProvider);
    final colorScheme = context.appColorScheme;
    final textTheme = context.appTextTheme;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Escanear Código QR'),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        actions: [
          IconButton(
            icon: Icon(
              _controller.torchEnabled ? Icons.flash_on : Icons.flash_off,
            ),
            onPressed: () => _controller.toggleTorch(),
          ),
        ],
      ),
      body: Stack(
        children: [
          // Camera view
          if (_isScanning)
            MobileScanner(controller: _controller, onDetect: _onDetect),

          // Overlay with scanning frame
          if (_isScanning)
            Container(
              decoration: ShapeDecoration(
                shape: QrScannerOverlayShape(
                  borderColor: colorScheme.primary,
                  borderRadius: 10,
                  borderLength: 30,
                  borderWidth: 10,
                  cutOutSize: 300,
                ),
              ),
            ),

          // Instructions at the bottom
          if (_isScanning)
            Positioned(
              bottom: 100,
              left: 0,
              right: 0,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: 0.7),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  'Coloca el código QR dentro del marco para escanearlo',
                  style: textTheme.bodyMedium?.copyWith(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

          // Result overlay
          if (!_isScanning)
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
                          children: [
                            Icon(
                              Icons.check_circle,
                              color: colorScheme.primary,
                              size: 64,
                            ),
                            Gaps.gap16,
                            Text(
                              'Código válido',
                              style: textTheme.titleLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Gaps.gap8,
                            Text(
                              response.message ??
                                  'Código validado correctamente',
                              style: textTheme.bodyMedium,
                              textAlign: TextAlign.center,
                            ),
                            if (response.data?.employee.fullName != null) ...[
                              Gaps.gap16,
                              Text(
                                'Empleado: ${response.data?.employee.fullName}',
                                style: textTheme.bodyLarge?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                            if (response.data?.action != null) ...[
                              Gaps.gap8,
                              Text(
                                'Tipo: ${response.data?.action}',
                                style: textTheme.bodyMedium,
                              ),
                            ],
                          ],
                        ),
                        error: (error) => Column(
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
                        ),
                      ),
                      Gaps.gap24,
                      Row(
                        children: [
                          Expanded(
                            child: OutlinedButton(
                              onPressed: _resetScanner,
                              child: const Text('Escanear otro'),
                            ),
                          ),
                          Gaps.gap16,
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () => context.pop(),
                              child: const Text('Cerrar'),
                            ),
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
