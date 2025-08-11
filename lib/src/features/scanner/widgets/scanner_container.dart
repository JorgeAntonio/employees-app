import 'package:attendance_app/src/core/shared/extensions/extensions.dart';
import 'package:attendance_app/src/core/shared/layout/layout.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/attendance_entities.dart';
import 'package:attendance_app/src/features/attendance/presentation/providers/attendance_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScannerContainer extends ConsumerStatefulWidget {
  const ScannerContainer({super.key});

  @override
  ConsumerState<ScannerContainer> createState() => _ScannerContainerState();
}

class _ScannerContainerState extends ConsumerState<ScannerContainer> {
  MobileScannerController? _controller;
  bool _isScanning = false;

  @override
  void initState() {
    super.initState();
    _controller = MobileScannerController(
      detectionSpeed: DetectionSpeed.normal,
      facing: CameraFacing.back,
      torchEnabled: false,
    );
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  void _onDetect(BarcodeCapture capture) {
    if (_isScanning) return;

    final List<Barcode> barcodes = capture.barcodes;
    if (barcodes.isNotEmpty) {
      final String code = barcodes.first.rawValue ?? '';
      if (code.isNotEmpty) {
        setState(() => _isScanning = true);
        _processScannedCode(code);
      }
    }
  }

  void _processScannedCode(String code) async {
    try {
      // Validar el código escaneado
      await ref
          .read(attendanceValidationNotifierProvider.notifier)
          .validateCode(code);

      final validationState = ref.read(attendanceValidationNotifierProvider);

      validationState.when(
        data: (either) {
          either.fold(
            (exception) {
              _showErrorSnackBar(
                'Error al validar código: ${exception.toString()}',
              );
            },
            (validation) {
              _showValidationDialog(validation, code);
            },
          );
        },
        loading: () {
          // Ya está cargando
        },
        error: (error, stack) {
          _showErrorSnackBar('Error: ${error.toString()}');
        },
      );
    } catch (e) {
      _showErrorSnackBar('Error inesperado: $e');
    } finally {
      setState(() => _isScanning = false);
    }
  }

  void _showValidationDialog(AttendanceValidation validation, String code) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Confirmar Asistencia'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Empleado: ${validation.employee.firstName} ${validation.employee.lastName}',
            ),
            Text('Cargo: ${validation.employee.position}'),
            Text(
              'Tipo: ${validation.type == 'CHECK_IN' ? 'Entrada' : 'Salida'}',
            ),
            Text('Hora: ${validation.timestamp.toString().substring(11, 16)}'),
            Text('Ubicación: ${validation.location}'),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Cancelar'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              _confirmAttendance(code);
            },
            child: const Text('Confirmar'),
          ),
        ],
      ),
    );
  }

  void _confirmAttendance(String code) async {
    try {
      await ref
          .read(attendanceConfirmationNotifierProvider.notifier)
          .confirmAttendance(
            code: code,
            confirmed: true,
            deviceInfo: DeviceInfo(
              name: 'Flutter App',
              os: 'Android/iOS',
              browser: 'Mobile App',
              userAgent: 'AttendanceApp/1.0',
            ),
          );

      final confirmationState = ref.read(
        attendanceConfirmationNotifierProvider,
      );

      confirmationState.when(
        data: (either) {
          either.fold(
            (exception) {
              _showErrorSnackBar(
                'Error al confirmar asistencia: ${exception.toString()}',
              );
            },
            (record) {
              _showSuccessSnackBar('Asistencia registrada exitosamente');
            },
          );
        },
        loading: () {
          // Ya está cargando
        },
        error: (error, stack) {
          _showErrorSnackBar('Error: ${error.toString()}');
        },
      );
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
    return Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(DoubleSizes.size16),
        border: Border.all(
          color: context.appColorScheme.outline.withOpacity(0.3),
          width: 2,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(DoubleSizes.size16),
        child: Stack(
          children: [
            MobileScanner(controller: _controller, onDetect: _onDetect),
            // Overlay para mostrar el área de escaneo
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: context.appColorScheme.primary,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(DoubleSizes.size8),
              ),
              margin: EdgeInsets.all(DoubleSizes.size32),
            ),
            // Indicador de escaneo
            if (_isScanning)
              Container(
                color: Colors.black54,
                child: Center(
                  child: CircularProgressIndicator(
                    color: context.appColorScheme.primary,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
