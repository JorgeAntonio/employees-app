import 'package:attendance_app/src/core/shared/extensions/extensions.dart';
import 'package:attendance_app/src/core/shared/layout/layout.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/attendance_entities.dart';
import 'package:attendance_app/src/features/attendance/presentation/providers/attendance_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ManualCodeButton extends ConsumerStatefulWidget {
  const ManualCodeButton({super.key});

  @override
  ConsumerState<ManualCodeButton> createState() => _ManualCodeButtonState();
}

class _ManualCodeButtonState extends ConsumerState<ManualCodeButton> {
  final TextEditingController _codeController = TextEditingController();

  @override
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }

  void _showManualCodeDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Ingresar Código Manual'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Ingresa el código de 6 caracteres que aparece en el QR',
            ),
            SizedBox(height: DoubleSizes.size16),
            TextField(
              controller: _codeController,
              decoration: const InputDecoration(
                labelText: 'Código',
                hintText: 'Ej: ABC123',
                border: OutlineInputBorder(),
              ),
              textCapitalization: TextCapitalization.characters,
              maxLength: 6,
              onChanged: (value) {
                // Convertir a mayúsculas automáticamente
                if (value != value.toUpperCase()) {
                  _codeController.value = TextEditingValue(
                    text: value.toUpperCase(),
                    selection: TextSelection.collapsed(offset: value.length),
                  );
                }
              },
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              _codeController.clear();
            },
            child: const Text('Cancelar'),
          ),
          ElevatedButton(
            onPressed: () {
              final code = _codeController.text.trim();
              if (code.length == 6) {
                Navigator.of(context).pop();
                _processManualCode(code);
                _codeController.clear();
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('El código debe tener 6 caracteres'),
                    backgroundColor: Colors.orange,
                  ),
                );
              }
            },
            child: const Text('Validar'),
          ),
        ],
      ),
    );
  }

  void _processManualCode(String code) async {
    try {
      // Validar el código manual
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
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: _showManualCodeDialog,
        icon: const Icon(Icons.keyboard),
        label: const Text('Ingresar Código Manual'),
        style: ElevatedButton.styleFrom(
          backgroundColor: context.appColorScheme.secondaryContainer,
          foregroundColor: context.appColorScheme.onSecondaryContainer,
          padding: EdgeInsets.symmetric(
            vertical: DoubleSizes.size16,
            horizontal: DoubleSizes.size24,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(DoubleSizes.size12),
          ),
        ),
      ),
    );
  }
}
