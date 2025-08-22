import 'package:alert_info/alert_info.dart';
import 'package:attendance_app/src/core/shared/extensions/extensions.dart';
import 'package:attendance_app/src/core/shared/layout/double_value.dart';
import 'package:attendance_app/src/core/shared/loaders/flutter_app_blurry_loader.dart';
import 'package:attendance_app/src/core/shared/widgets/attendance_app_bar.dart';
import 'package:attendance_app/src/core/shared/widgets/section_title.dart';
import 'package:attendance_app/src/features/employees/domain/entities/create_employee_request.dart';
import 'package:attendance_app/src/features/employees/presentation/providers/employees_providers.dart';
import 'package:attendance_app/src/features/shift/presentation/providers/shift_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddEmployeeScreen extends ConsumerStatefulWidget {
  const AddEmployeeScreen({super.key});

  @override
  ConsumerState<AddEmployeeScreen> createState() => _AddEmployeeScreenState();
}

class _AddEmployeeScreenState extends ConsumerState<AddEmployeeScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _dniController = TextEditingController();
  final _phoneController = TextEditingController();
  final _photoUrlController = TextEditingController();
  final _positionController = TextEditingController();
  final _departmentController = TextEditingController();
  String? _selectedShiftId;

  bool _obscurePassword = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _dniController.dispose();
    _phoneController.dispose();
    _photoUrlController.dispose();
    _positionController.dispose();
    _departmentController.dispose();
    // _shiftIdController removed
    super.dispose();
  }

  Future<void> _addEmployee() async {
    if (!_formKey.currentState!.validate()) return;

    final request = CreateEmployeeRequest(
      email: _emailController.text.trim(),
      password: _passwordController.text,
      firstName: _firstNameController.text.trim(),
      lastName: _lastNameController.text.trim(),
      dni: _dniController.text.trim(),
      phone: _phoneController.text.trim().isEmpty
          ? null
          : _phoneController.text.trim(),
      photoUrl: _photoUrlController.text.trim().isEmpty
          ? null
          : _photoUrlController.text.trim(),
      position: _positionController.text.trim(),
      department: _departmentController.text.trim(),
      shiftId: _selectedShiftId,
    );

    final addEmployeeUseCase = ref.read(addEmployeeUseCaseProvider);

    // Usar showLoader en lugar de setState con _isLoading
    final result = await showLoader(
      context,
      addEmployeeUseCase(request),
      text: 'Creando empleado...',
    );

    result.fold(
      (failure) {
        AlertInfo.show(
          context: context,
          text: 'Error al crear empleado: ${failure.message}',
          typeInfo: TypeInfo.error,
        );
      },
      (response) {
        AlertInfo.show(
          context: context,
          text: response.message ?? 'Empleado creado exitosamente',
          typeInfo: TypeInfo.success,
        );
        Navigator.of(context).pop();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.appColorScheme;

    return Scaffold(
      appBar: AttendanceAppBar(
        title: 'Agregar Empleado',
        leading: true,
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: DoubleSizes.size16,
            vertical: DoubleSizes.size24,
          ),
          child: Column(
            spacing: DoubleSizes.size24,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                elevation: 0,
                color: colorScheme.surface,
                child: Column(
                  spacing: DoubleSizes.size16,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SectionTitle(title: 'Información Personal'),

                    TextFormField(
                      controller: _firstNameController,
                      decoration: const InputDecoration(
                        labelText: 'Nombre *',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'El nombre es requerido';
                        }
                        return null;
                      },
                    ),

                    TextFormField(
                      controller: _lastNameController,
                      decoration: const InputDecoration(
                        labelText: 'Apellido *',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person_outline),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'El apellido es requerido';
                        }
                        return null;
                      },
                    ),

                    TextFormField(
                      controller: _dniController,
                      decoration: const InputDecoration(
                        labelText: 'DNI *',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.badge),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'El DNI es requerido';
                        }
                        if (value.trim().length < 8) {
                          return 'El DNI debe tener al menos 8 caracteres';
                        }
                        return null;
                      },
                    ),

                    TextFormField(
                      controller: _phoneController,
                      decoration: const InputDecoration(
                        labelText: 'Teléfono *',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.phone),
                      ),
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'El teléfono es requerido';
                        }
                        return null;
                      },
                    ),

                    TextFormField(
                      controller: _photoUrlController,
                      decoration: const InputDecoration(
                        labelText: 'URL de Foto (Opcional)',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.image),
                      ),
                      keyboardType: TextInputType.url,
                    ),
                  ],
                ),
              ),

              Card(
                elevation: 0,
                color: colorScheme.surface,
                child: Column(
                  spacing: DoubleSizes.size16,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SectionTitle(title: 'Información de Acceso'),

                    TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        labelText: 'Email *',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'El email es requerido';
                        }
                        if (!RegExp(
                          r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                        ).hasMatch(value)) {
                          return 'Ingrese un email válido';
                        }
                        return null;
                      },
                    ),

                    TextFormField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        labelText: 'Contraseña *',
                        border: const OutlineInputBorder(),
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscurePassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscurePassword = !_obscurePassword;
                            });
                          },
                        ),
                      ),
                      obscureText: _obscurePassword,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'La contraseña es requerida';
                        }
                        if (value.length < 6) {
                          return 'La contraseña debe tener al menos 6 caracteres';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),

              Card(
                elevation: 0,
                color: colorScheme.surface,
                child: Column(
                  spacing: DoubleSizes.size16,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SectionTitle(title: 'Información Laboral'),

                    TextFormField(
                      controller: _positionController,
                      decoration: const InputDecoration(
                        labelText: 'Cargo *',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.work),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'El cargo es requerido';
                        }
                        return null;
                      },
                    ),

                    TextFormField(
                      controller: _departmentController,
                      decoration: const InputDecoration(
                        labelText: 'Departamento *',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.business),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'El departamento es requerido';
                        }
                        return null;
                      },
                    ),

                    Consumer(
                      builder: (context, ref, child) {
                        final shiftsAsync = ref.watch(
                          shiftsForDropdownProvider,
                        );

                        return shiftsAsync.when(
                          data: (shifts) {
                            return DropdownButtonFormField<String>(
                              initialValue: _selectedShiftId,
                              decoration: const InputDecoration(
                                labelText: 'Turno *',
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(Icons.schedule),
                                helperText: 'Seleccione el turno de trabajo',
                              ),
                              items: shifts.map((shift) {
                                return DropdownMenuItem<String>(
                                  value: shift.id.toString(),
                                  child: Text(
                                    '${shift.name} (${shift.startTime} - ${shift.endTime})',
                                    style: context.appTextTheme.bodySmall,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                );
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  _selectedShiftId = value;
                                });
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Debe seleccionar un turno';
                                }
                                return null;
                              },
                            );
                          },
                          loading: () => DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                              labelText: 'Turno *',
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.schedule),
                              helperText: 'Cargando turnos...',
                            ),
                            items: [],
                            onChanged: null,
                          ),
                          error: (error, stack) => DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                              labelText: 'Turno *',
                              border: const OutlineInputBorder(),
                              prefixIcon: const Icon(Icons.schedule),
                              helperText:
                                  'Error al cargar turnos: ${error.toString()}',
                              helperStyle: const TextStyle(color: Colors.red),
                            ),
                            items: const [],
                            onChanged: null,
                            validator: (value) => 'Error al cargar los turnos',
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),

              FilledButton(
                onPressed: _addEmployee,
                style: FilledButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    vertical: DoubleSizes.size12,
                  ),
                ),
                child: const Text('Crear Empleado'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
