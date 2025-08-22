import 'package:attendance_app/src/core/shared/extensions/build_context.dart';
import 'package:attendance_app/src/core/shared/layout/double_value.dart';
import 'package:attendance_app/src/core/shared/widgets/attendance_app_bar.dart';
import 'package:attendance_app/src/core/shared/widgets/section_title.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/confirm_attendance_request.dart';
import 'package:attendance_app/src/features/attendance/presentation/providers/confirm_attendance_state_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ConfirmAttendanceScreen extends ConsumerStatefulWidget {
  const ConfirmAttendanceScreen({super.key});

  @override
  ConsumerState<ConfirmAttendanceScreen> createState() =>
      _ConfirmAttendanceScreenState();
}

class _ConfirmAttendanceScreenState
    extends ConsumerState<ConfirmAttendanceScreen> {
  final _codeController = TextEditingController();
  final _latitudeController = TextEditingController();
  final _longitudeController = TextEditingController();
  final _accuracyController = TextEditingController();
  final _locationIdController = TextEditingController();
  final _nameController = TextEditingController();
  final _deviceNameController = TextEditingController();
  final _deviceOsController = TextEditingController();
  final _deviceBrowserController = TextEditingController();
  final _deviceUserAgentController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool _includeLocation = false;
  bool _includeDeviceInfo = false;
  bool? _confirmed = true;

  @override
  void dispose() {
    _codeController.dispose();
    _latitudeController.dispose();
    _longitudeController.dispose();
    _accuracyController.dispose();
    _locationIdController.dispose();
    _nameController.dispose();
    _deviceNameController.dispose();
    _deviceOsController.dispose();
    _deviceBrowserController.dispose();
    _deviceUserAgentController.dispose();
    super.dispose();
  }

  void _confirmAttendance() {
    if (!_formKey.currentState!.validate()) return;

    final code = _codeController.text.trim();

    DeviceInfo? deviceInfo;
    if (_includeDeviceInfo) {
      deviceInfo = DeviceInfo(
        name: _deviceNameController.text.trim().isEmpty
            ? 'Test Device'
            : _deviceNameController.text.trim(),
        os: _deviceOsController.text.trim().isEmpty
            ? 'Android'
            : _deviceOsController.text.trim(),
        browser: _deviceBrowserController.text.trim().isEmpty
            ? 'Chrome'
            : _deviceBrowserController.text.trim(),
        userAgent: _deviceUserAgentController.text.trim().isEmpty
            ? 'Test User Agent'
            : _deviceUserAgentController.text.trim(),
      );
    }

    if (_includeLocation) {
      ref
          .read(confirmAttendanceNotifierProvider.notifier)
          .confirmWithLocation(
            code: code,
            confirmed: _confirmed ?? true,
            locationId: _locationIdController.text.trim().isEmpty
                ? null
                : _locationIdController.text.trim(),
            latitude: _latitudeController.text.trim().isEmpty
                ? null
                : double.tryParse(_latitudeController.text.trim()),
            longitude: _longitudeController.text.trim().isEmpty
                ? null
                : double.tryParse(_longitudeController.text.trim()),
            accuracy: _accuracyController.text.trim().isEmpty
                ? null
                : double.tryParse(_accuracyController.text.trim()),
            name: _nameController.text.trim().isEmpty
                ? null
                : _nameController.text.trim(),
            deviceInfo: deviceInfo,
          );
    } else {
      ref
          .read(confirmAttendanceNotifierProvider.notifier)
          .confirm(code: code, confirmed: _confirmed ?? true);
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(confirmAttendanceNotifierProvider);

    return Scaffold(
      appBar: AttendanceAppBar(
        title: 'Confirmar Asistencia',
        centerTitle: true,
        leading: true,
        actions: [
          // clear button
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              _codeController.clear();
              _latitudeController.clear();
              _longitudeController.clear();
              _accuracyController.clear();
              _locationIdController.clear();
              _nameController.clear();
              _deviceNameController.clear();
              _deviceOsController.clear();
              _deviceBrowserController.clear();
              _deviceUserAgentController.clear();
              setState(() {
                _includeLocation = false;
                _includeDeviceInfo = false;
                _confirmed = true;
              });
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            spacing: DoubleSizes.size16,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Código
              const SectionTitle(title: 'Código QR'),
              TextFormField(
                controller: _codeController,
                decoration: const InputDecoration(
                  labelText: 'Código QR',
                  hintText: 'Ingresa el código a confirmar',
                  border: OutlineInputBorder(),
                ),
                validator: (value) => value == null || value.trim().isEmpty
                    ? 'El código QR es requerido'
                    : null,
              ),

              // Confirmación
              Row(
                children: [
                  const Text('Confirmado: '),
                  Radio<bool?>(
                    value: true,
                    groupValue: _confirmed,
                    onChanged: (value) => setState(() => _confirmed = value),
                  ),
                ],
              ),

              // // Switch para incluir ubicación
              // SwitchListTile(
              //   title: const Text('Incluir datos de ubicación'),
              //   value: _includeLocation,
              //   onChanged: (value) => setState(() => _includeLocation = value),
              // ),

              // // Campos de ubicación
              // if (_includeLocation) ...[
              //   const SizedBox(height: 16),
              //   TextField(
              //     controller: _locationIdController,
              //     decoration: const InputDecoration(
              //       labelText: 'ID de Ubicación (opcional)',
              //       border: OutlineInputBorder(),
              //     ),
              //   ),
              //   const SizedBox(height: 8),
              //   TextField(
              //     controller: _latitudeController,
              //     keyboardType: TextInputType.number,
              //     decoration: const InputDecoration(
              //       labelText: 'Latitud (opcional)',
              //       hintText: 'Ej: -12.0464',
              //       border: OutlineInputBorder(),
              //     ),
              //   ),
              //   const SizedBox(height: 8),
              //   TextField(
              //     controller: _longitudeController,
              //     keyboardType: TextInputType.number,
              //     decoration: const InputDecoration(
              //       labelText: 'Longitud (opcional)',
              //       hintText: 'Ej: -77.0428',
              //       border: OutlineInputBorder(),
              //     ),
              //   ),
              //   const SizedBox(height: 8),
              //   TextField(
              //     controller: _accuracyController,
              //     keyboardType: TextInputType.number,
              //     decoration: const InputDecoration(
              //       labelText: 'Precisión en metros (opcional)',
              //       hintText: 'Ej: 10.5',
              //       border: OutlineInputBorder(),
              //     ),
              //   ),
              //   const SizedBox(height: 8),
              //   TextField(
              //     controller: _nameController,
              //     decoration: const InputDecoration(
              //       labelText: 'Nombre de ubicación (opcional)',
              //       hintText: 'Ej: Oficina Principal',
              //       border: OutlineInputBorder(),
              //     ),
              //   ),
              // ],

              // // Switch para incluir información del dispositivo
              // SwitchListTile(
              //   title: const Text('Incluir información del dispositivo'),
              //   value: _includeDeviceInfo,
              //   onChanged: (value) => setState(() => _includeDeviceInfo = value),
              // ),

              // // Campos de dispositivo
              // if (_includeDeviceInfo) ...[
              //   const SizedBox(height: 16),
              //   TextField(
              //     controller: _deviceNameController,
              //     decoration: const InputDecoration(
              //       labelText: 'Nombre del dispositivo',
              //       hintText: 'Ej: Samsung Galaxy S21',
              //       border: OutlineInputBorder(),
              //     ),
              //   ),
              //   const SizedBox(height: 8),
              //   TextField(
              //     controller: _deviceOsController,
              //     decoration: const InputDecoration(
              //       labelText: 'Sistema Operativo',
              //       hintText: 'Ej: Android 13',
              //       border: OutlineInputBorder(),
              //     ),
              //   ),
              //   const SizedBox(height: 8),
              //   TextField(
              //     controller: _deviceBrowserController,
              //     decoration: const InputDecoration(
              //       labelText: 'Navegador',
              //       hintText: 'Ej: Chrome 120.0',
              //       border: OutlineInputBorder(),
              //     ),
              //   ),
              //   const SizedBox(height: 8),
              //   TextField(
              //     controller: _deviceUserAgentController,
              //     decoration: const InputDecoration(
              //       labelText: 'User Agent',
              //       hintText: 'Mozilla/5.0...',
              //       border: OutlineInputBorder(),
              //     ),
              //   ),
              // ],

              // const SizedBox(height: 24),

              // Resultado
              state.when(
                initial: () => const SizedBox.shrink(),
                loading: () => const Center(
                  child: Column(
                    children: [
                      CircularProgressIndicator(),
                      SizedBox(height: 8),
                      Text('Confirmando asistencia...'),
                    ],
                  ),
                ),
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
                              'Asistencia Confirmada',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green.shade700,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        if (response.data != null) ...[
                          Text('Mensaje: ${response.data!.message}'),
                          const SizedBox(height: 8),
                          Text(
                            'Empleado: ${response.data!.attendance.employee.fullName}',
                          ),
                          Text(
                            'DNI: ${response.data!.attendance.employee.dni}',
                          ),
                          Text('Estado: ${response.data!.attendance.status}'),
                          Text(
                            'Fecha: ${response.data!.attendance.date.toString().split(' ')[0]}',
                          ),
                          if (response.data!.attendance.checkInTime != null)
                            Text(
                              'Hora de entrada: ${response.data!.attendance.checkInTime.toString().split(' ')[1].substring(0, 8)}',
                            ),
                          if (response.data!.attendance.checkOutTime != null)
                            Text(
                              'Hora de salida: ${response.data!.attendance.checkOutTime.toString().split(' ')[1].substring(0, 8)}',
                            ),
                          Text(
                            'Duración: ${response.data!.attendance.durationMins} minutos',
                          ),
                          if (response.data!.attendance.checkInLocation != null)
                            Text(
                              'Ubicación entrada: ${response.data!.attendance.checkInLocation!.name}',
                            ),
                          if (response.data!.attendance.checkOutLocation !=
                              null)
                            Text(
                              'Ubicación salida: ${response.data!.attendance.checkOutLocation!.name}',
                            ),
                        ],
                      ],
                    ),
                  ),
                ),
                error: (message) => Card(
                  color: Colors.red.shade50,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Icon(Icons.error, color: Colors.red.shade700),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            'Error: $message',
                            style: TextStyle(color: Colors.red.shade700),
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
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: state.isLoading ? null : _confirmAttendance,
        label: state.isLoading
            ? const Text('Confirmando...')
            : const Text('Confirmar'),
        icon: Icon(
          state.isLoading ? Icons.hourglass_top : Icons.check_circle,
          color: Colors.white,
        ),
        backgroundColor: context.appColorScheme.secondary,
      ),
    );
  }
}
