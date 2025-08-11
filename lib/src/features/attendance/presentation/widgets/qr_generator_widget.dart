import 'dart:convert';
import 'dart:typed_data';

import 'package:attendance_app/src/core/shared/extensions/extensions.dart';
import 'package:attendance_app/src/core/shared/layout/layout.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/attendance_entities.dart';
import 'package:attendance_app/src/features/attendance/presentation/providers/attendance_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class QRGeneratorWidget extends ConsumerStatefulWidget {
  const QRGeneratorWidget({super.key});

  @override
  ConsumerState<QRGeneratorWidget> createState() => _QRGeneratorWidgetState();
}

class _QRGeneratorWidgetState extends ConsumerState<QRGeneratorWidget> {
  @override
  void initState() {
    super.initState();
  }

  Future<void> _generateCheckInQR() async {
    try {
      await ref.read(qrCodeNotifierProvider.notifier).generateCheckInQR();
      _showSuccessSnackBar('QR de entrada generado exitosamente');
    } catch (e) {
      _showErrorSnackBar('Error inesperado: $e');
    }
  }

  Future<void> _generateCheckOutQR() async {
    try {
      await ref.read(qrCodeNotifierProvider.notifier).generateCheckOutQR();
      _showSuccessSnackBar('QR de salida generado exitosamente');
    } catch (e) {
      _showErrorSnackBar('Error inesperado: $e');
    }
  }

  void _showErrorSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), backgroundColor: Colors.red),
    );
  }

  void _showSuccessSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), backgroundColor: Colors.green),
    );
  }

  @override
  Widget build(BuildContext context) {
    final qrState = ref.watch(qrCodeNotifierProvider);

    return Container(
      padding: EdgeInsets.all(DoubleSizes.size16),
      decoration: BoxDecoration(
        color: context.appColorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(DoubleSizes.size12),
        border: Border.all(
          color: context.appColorScheme.outline.withOpacity(0.3),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Generar Código QR',
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: DoubleSizes.size16),

          // Botones para generar QR
          Row(
            children: [
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: qrState.isLoading ? null : _generateCheckInQR,
                  icon: const Icon(Icons.login),
                  label: const Text('Entrada'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: context.appColorScheme.primaryContainer,
                    foregroundColor: context.appColorScheme.onPrimaryContainer,
                  ),
                ),
              ),
              SizedBox(width: DoubleSizes.size12),
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: qrState.isLoading ? null : _generateCheckOutQR,
                  icon: const Icon(Icons.logout),
                  label: const Text('Salida'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: context.appColorScheme.secondaryContainer,
                    foregroundColor:
                        context.appColorScheme.onSecondaryContainer,
                  ),
                ),
              ),
            ],
          ),

          // Mostrar loading
          if (qrState.isLoading) ...[
            SizedBox(height: DoubleSizes.size16),
            Center(
              child: CircularProgressIndicator(
                color: context.appColorScheme.primary,
              ),
            ),
          ],

          // Mostrar error
          if (qrState.hasError) ...[
            SizedBox(height: DoubleSizes.size16),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(DoubleSizes.size12),
              decoration: BoxDecoration(
                color: context.appColorScheme.errorContainer,
                borderRadius: BorderRadius.circular(DoubleSizes.size8),
              ),
              child: Text(
                'Error: ${qrState.error.toString()}',
                style: context.textTheme.bodyMedium?.copyWith(
                  color: context.appColorScheme.onErrorContainer,
                ),
              ),
            ),
          ],

          // Mostrar QR generado
          qrState.when(
            data: (either) => either.fold(
              (exception) => const SizedBox.shrink(),
              (qrCode) => _buildQRDisplay(context, qrCode),
            ),
            loading: () => const SizedBox.shrink(),
            error: (error, stack) => const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }

  Widget _buildQRDisplay(BuildContext context, QRCode qrCode) {
    return Column(
      children: [
        SizedBox(height: DoubleSizes.size16),
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(DoubleSizes.size16),
          decoration: BoxDecoration(
            color: context.appColorScheme.surface,
            borderRadius: BorderRadius.circular(DoubleSizes.size8),
            border: Border.all(
              color: context.appColorScheme.outline.withOpacity(0.3),
            ),
          ),
          child: Column(
            children: [
              // Imagen del QR
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: context.appColorScheme.outline.withOpacity(0.3),
                  ),
                  borderRadius: BorderRadius.circular(DoubleSizes.size8),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(DoubleSizes.size8),
                  child: Image.memory(
                    _decodeBase64Image(qrCode.qrCode),
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              SizedBox(height: DoubleSizes.size16),

              // Información del QR
              Text(
                'Código Manual: ${qrCode.manualCode}',
                style: context.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: context.appColorScheme.primary,
                ),
              ),

              SizedBox(height: DoubleSizes.size8),

              Text(
                'Tipo: ${qrCode.type == 'CHECK_IN' ? 'Entrada' : 'Salida'}',
                style: context.textTheme.bodyMedium,
              ),

              SizedBox(height: DoubleSizes.size4),

              Text(
                'Expira: ${_formatDateTime(qrCode.expiresAt)}',
                style: context.textTheme.bodySmall?.copyWith(
                  color: context.appColorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Uint8List _decodeBase64Image(String base64String) {
    // Remover el prefijo data:image/png;base64, si existe
    final String data = base64String.contains(',')
        ? base64String.split(',')[1]
        : base64String;

    return base64Decode(data);
  }

  String _formatDateTime(DateTime dateTime) {
    return '${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}';
  }
}
