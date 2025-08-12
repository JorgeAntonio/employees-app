import 'dart:convert';

import 'package:attendance_app/src/core/shared/extensions/extensions.dart';
import 'package:attendance_app/src/core/shared/layout/layout.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/qr_code_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QrCodeDisplay extends StatelessWidget {
  final QrCodeResponse qrCodeResponse;
  final VoidCallback? onClose;

  const QrCodeDisplay({super.key, required this.qrCodeResponse, this.onClose});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(DoubleSizes.size24),
      decoration: BoxDecoration(
        color: context.appColorScheme.surface,
        borderRadius: BorderRadius.circular(DoubleSizes.size16),
        boxShadow: [
          BoxShadow(
            color: context.appColorScheme.shadow.withValues(alpha: 0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Código QR Generado',
                style: context.appTextTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (onClose != null)
                IconButton(onPressed: onClose, icon: const Icon(Icons.close)),
            ],
          ),

          Gaps.gap24,

          // QR Code Image
          Container(
            padding: EdgeInsets.all(DoubleSizes.size16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(DoubleSizes.size12),
              border: Border.all(
                color: context.appColorScheme.outline.withValues(alpha: 0.2),
              ),
            ),
            child: Image.memory(
              _decodeBase64Image(qrCodeResponse.data.qrCode),
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
          ),

          Gaps.gap24,

          // Manual Code
          Container(
            padding: EdgeInsets.all(DoubleSizes.size16),
            decoration: BoxDecoration(
              color: context.appColorScheme.surfaceContainerHighest,
              borderRadius: BorderRadius.circular(DoubleSizes.size12),
            ),
            child: Column(
              children: [
                Text(
                  'Código Manual',
                  style: context.appTextTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Gaps.gap8,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      qrCodeResponse.data.manualCode,
                      style: context.appTextTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                        fontFamily: 'monospace',
                      ),
                    ),
                    Gaps.gap8,
                    IconButton(
                      onPressed: () => _copyToClipboard(
                        context,
                        qrCodeResponse.data.manualCode,
                      ),
                      icon: const Icon(Icons.copy, size: 20),
                      tooltip: 'Copiar código',
                    ),
                  ],
                ),
              ],
            ),
          ),

          Gaps.gap16,

          // Expiration info
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: DoubleSizes.size12,
              vertical: DoubleSizes.size8,
            ),
            decoration: BoxDecoration(
              color: context.appColorScheme.errorContainer,
              borderRadius: BorderRadius.circular(DoubleSizes.size8),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.access_time,
                  size: 16,
                  color: context.appColorScheme.onErrorContainer,
                ),
                Gaps.gap4,
                Text(
                  'Expira: ${_formatExpirationTime(qrCodeResponse.data.expiresAt)}',
                  style: context.appTextTheme.bodySmall?.copyWith(
                    color: context.appColorScheme.onErrorContainer,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),

          Gaps.gap16,

          // Instructions
          Text(
            'Escanea el código QR o ingresa el código manual para registrar tu ${qrCodeResponse.data.type == 'CHECK_IN' ? 'entrada' : 'salida'}',
            style: context.appTextTheme.bodyMedium?.copyWith(
              color: context.appColorScheme.onSurfaceVariant,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Uint8List _decodeBase64Image(String base64String) {
    // Remove data:image/png;base64, prefix if present
    final cleanBase64 = base64String.replaceFirst(
      RegExp(r'data:image\/[^;]+;base64,'),
      '',
    );
    return base64.decode(cleanBase64);
  }

  void _copyToClipboard(BuildContext context, String text) {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Código copiado: $text'),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  String _formatExpirationTime(DateTime expiresAt) {
    final now = DateTime.now();
    final difference = expiresAt.difference(now);

    if (difference.isNegative) {
      return 'Expirado';
    }

    final minutes = difference.inMinutes;
    final seconds = difference.inSeconds % 60;

    return '${minutes}m ${seconds}s';
  }
}
