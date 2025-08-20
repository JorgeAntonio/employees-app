import 'package:alert_info/alert_info.dart';
import 'package:attendance_app/src/core/shared/extensions/build_context.dart';
import 'package:attendance_app/src/core/shared/widgets/attendance_app_bar.dart';
import 'package:attendance_app/src/features/attendance/presentation/providers/confirm_attendance_state_provider.dart';
import 'package:attendance_app/src/features/attendance/presentation/providers/validate_code_state_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ValidateCodeScreen extends ConsumerStatefulWidget {
  const ValidateCodeScreen({super.key});

  @override
  ConsumerState<ValidateCodeScreen> createState() => _ValidateCodeScreenState();
}

class _ValidateCodeScreenState extends ConsumerState<ValidateCodeScreen> {
  final _codeController = TextEditingController();
  final _latitudeController = TextEditingController();
  final _longitudeController = TextEditingController();
  final _accuracyController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _includeLocation = false;
  String? currentCode;

  @override
  void dispose() {
    _codeController.dispose();
    _latitudeController.dispose();
    _longitudeController.dispose();
    _accuracyController.dispose();
    super.dispose();
  }

  void _validateCode() {
    if (!_formKey.currentState!.validate()) return;

    final code = _codeController.text.trim();
    setState(() {
      currentCode = code;
    });

    if (_includeLocation) {
      final latitude = double.tryParse(_latitudeController.text);
      final longitude = double.tryParse(_longitudeController.text);
      final accuracy = double.tryParse(_accuracyController.text);

      if (latitude == null || longitude == null) {
        AlertInfo.show(
          context: context,
          text: 'Por favor ingresa coordenadas válidas',
          typeInfo: TypeInfo.warning,
        );
        return;
      }

      ref
          .read(validateCodeNotifierProvider.notifier)
          .validateCodeWithLocation(
            code: code,
            latitude: latitude,
            longitude: longitude,
            accuracy: accuracy,
          );
    } else {
      ref
          .read(validateCodeNotifierProvider.notifier)
          .validateCodeWithoutLocation(code);
    }
  }

  void _reset() {
    _codeController.clear();
    _latitudeController.clear();
    _longitudeController.clear();
    _accuracyController.clear();
    setState(() {
      _includeLocation = false;
      currentCode = null;
    });
    ref.read(validateCodeNotifierProvider.notifier).reset();
    ref.read(confirmAttendanceNotifierProvider.notifier).reset();
  }

  @override
  Widget build(BuildContext context) {
    final validateCodeState = ref.watch(validateCodeNotifierProvider);

    return Scaffold(
      appBar: AttendanceAppBar(
        title: 'Validar Código',
        actions: [
          IconButton(
            onPressed: _reset,
            icon: Icon(Icons.refresh, color: context.appColorScheme.onSurface),
            tooltip: 'Limpiar',
          ),
        ],
        leading: true,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Código QR o Manual',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _codeController,
                      decoration: const InputDecoration(
                        labelText: 'Código',
                        hintText: 'Ingresa el código QR o manual',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.qr_code),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'El código es requerido';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Incluir Ubicación',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        Switch(
                          value: _includeLocation,
                          onChanged: (value) {
                            setState(() {
                              _includeLocation = value;
                            });
                          },
                        ),
                      ],
                    ),
                    if (_includeLocation) ...[
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _latitudeController,
                        decoration: const InputDecoration(
                          labelText: 'Latitud',
                          hintText: 'Ej: -12.0464',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.location_on),
                        ),
                        keyboardType: const TextInputType.numberWithOptions(
                          decimal: true,
                        ),
                      ),
                      const SizedBox(height: 12),
                      TextFormField(
                        controller: _longitudeController,
                        decoration: const InputDecoration(
                          labelText: 'Longitud',
                          hintText: 'Ej: -77.0428',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.location_on),
                        ),
                        keyboardType: const TextInputType.numberWithOptions(
                          decimal: true,
                        ),
                      ),
                      const SizedBox(height: 12),
                      TextFormField(
                        controller: _accuracyController,
                        decoration: const InputDecoration(
                          labelText: 'Precisión (opcional)',
                          hintText: 'Ej: 5.0',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.gps_fixed),
                        ),
                        keyboardType: const TextInputType.numberWithOptions(
                          decimal: true,
                        ),
                      ),
                    ],
                  ],
                ),
                const SizedBox(height: 24),

                // Resultado de la validación
                validateCodeState.when(
                  initial: () => const SizedBox.shrink(),
                  loading: () => const SizedBox.shrink(),
                  success: (response) => Card(
                    color: Colors.green.shade50,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.check_circle,
                                color: Colors.green.shade700,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                'Validación Exitosa',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green.shade700,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          _buildInfoRow(
                            'Empleado',
                            response.data?.employee.fullName ?? 'N/A',
                          ),
                          _buildInfoRow(
                            'DNI',
                            response.data?.employee.dni ?? 'N/A',
                          ),
                          _buildInfoRow(
                            'Posición',
                            response.data?.employee.position ?? 'N/A',
                          ),
                          _buildInfoRow(
                            'Departamento',
                            response.data?.employee.department ?? 'N/A',
                          ),
                          _buildInfoRow(
                            'Acción',
                            response.data?.action ?? 'N/A',
                          ),
                          _buildInfoRow(
                            'Fecha/Hora',
                            response.data?.timestamp.toString() ?? 'N/A',
                          ),
                        ],
                      ),
                    ),
                  ),
                  error: (message) => Card(
                    color: Colors.red.shade50,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.error, color: Colors.red.shade700),
                              const SizedBox(width: 8),
                              Text(
                                'Error de Validación',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red.shade700,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Text(
                            message,
                            style: TextStyle(
                              color: Colors.red.shade700,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // Resultado de la confirmación
                const SizedBox(height: 16),
                ref
                    .watch(confirmAttendanceNotifierProvider)
                    .maybeWhen(
                      success: (response) => Card(
                        color: context.appColorScheme.primaryContainer,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Icon(
                                Icons.check_circle,
                                color: context.appColorScheme.primary,
                                size: 32,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Asistencia Confirmada',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: context.appColorScheme.primary,
                                ),
                              ),
                              if (response.data?.message != null) ...[
                                const SizedBox(height: 4),
                                Text(
                                  response.data!.message,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: context.appColorScheme.primary,
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ),
                      ),
                      error: (message) => Card(
                        color: context.appColorScheme.errorContainer,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Icon(
                                Icons.error,
                                color: context.appColorScheme.error,
                                size: 32,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Error al confirmar',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: context.appColorScheme.error,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                message,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: context.appColorScheme.error,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      orElse: () => const SizedBox.shrink(),
                    ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: validateCodeState.maybeWhen(
        success: (response) => FloatingActionButton.extended(
          onPressed: ref
              .watch(confirmAttendanceNotifierProvider)
              .maybeWhen(
                loading: () => null,
                orElse: () => () {
                  if (currentCode != null) {
                    // Limpiar los inputs
                    _codeController.clear();
                    _latitudeController.clear();
                    _longitudeController.clear();
                    _accuracyController.clear();
                    setState(() {
                      _includeLocation = false;
                    });
                    // Limpiar el estado de validación
                    ref.read(validateCodeNotifierProvider.notifier).reset();
                    // Confirmar la asistencia
                    ref
                        .read(confirmAttendanceNotifierProvider.notifier)
                        .confirm(code: currentCode!, confirmed: true);
                  }
                },
              ),
          label: ref
              .watch(confirmAttendanceNotifierProvider)
              .maybeWhen(
                loading: () => const Row(
                  children: [
                    Text('Confirmando...'),
                    SizedBox(width: 10),
                    SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                    ),
                  ],
                ),
                orElse: () => const Text('Confirmar'),
              ),
          icon: const Icon(Icons.check),
        ),
        orElse: () => FloatingActionButton.extended(
          onPressed: validateCodeState.maybeWhen(
            loading: () => null,
            orElse: () => _validateCode,
          ),
          label: validateCodeState.maybeWhen(
            loading: () => const Row(
              children: [
                Text('Validando...'),
                SizedBox(width: 10),
                SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                ),
              ],
            ),
            orElse: () => const Text('Validar Código'),
          ),
          icon: const Icon(Icons.qr_code),
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              '$label:',
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
          ),
          Expanded(
            child: Text(value, style: const TextStyle(color: Colors.black54)),
          ),
        ],
      ),
    );
  }
}
