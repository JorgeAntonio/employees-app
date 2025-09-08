import 'package:alert_info/alert_info.dart';
import 'package:attendance_app/src/core/shared/extensions/extensions.dart';
import 'package:attendance_app/src/core/shared/layout/double_value.dart';
import 'package:attendance_app/src/core/shared/loaders/flutter_app_blurry_loader.dart';
import 'package:attendance_app/src/core/shared/widgets/attendance_app_bar.dart';
import 'package:attendance_app/src/core/shared/widgets/section_title.dart';
import 'package:attendance_app/src/features/employees/domain/entities/create_employee_request.dart';
import 'package:attendance_app/src/features/employees/domain/entities/employee_entity.dart';
import 'package:attendance_app/src/features/employees/presentation/providers/employees_providers.dart';
import 'package:attendance_app/src/features/shift/presentation/providers/shift_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class EditEmployeeScreen extends HookConsumerWidget {
  const EditEmployeeScreen({super.key, required this.employeeId});

  final String employeeId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Form key
    final formKey = useMemoized(() => GlobalKey<FormState>());

    // Text controllers using hooks
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final firstNameController = useTextEditingController();
    final lastNameController = useTextEditingController();
    final dniController = useTextEditingController();
    final phoneController = useTextEditingController();
    final photoUrlController = useTextEditingController();
    final positionController = useTextEditingController();
    final departmentController = useTextEditingController();

    // State variables using hooks
    final selectedShiftId = useState<String?>(null);
    final obscurePassword = useState(true);
    final isLoading = useState(true);

    final colorScheme = context.appColorScheme;

    // Function to populate fields
    void populateFields(Employee employee) {
      emailController.text = employee.user.email;
      firstNameController.text = employee.firstName;
      lastNameController.text = employee.lastName;
      dniController.text = employee.dni;
      phoneController.text = employee.phone ?? '';
      photoUrlController.text = employee.photoUrl ?? '';
      positionController.text = employee.position;
      departmentController.text = employee.department;
      selectedShiftId.value = employee.shiftId;
    }

    // Load employee data function
    Future<void> loadEmployeeData() async {
      try {
        final employeesRepository = ref.read(employeesRepositoryProvider);
        final result = await employeesRepository.getEmployeeById(employeeId);

        result.fold(
          (failure) {
            if (context.mounted) {
              AlertInfo.show(
                context: context,
                text: 'Error al cargar empleado: ${failure.message}',
                typeInfo: TypeInfo.error,
              );
              Navigator.of(context).pop();
            }
          },
          (employee) {
            populateFields(employee);
            isLoading.value = false;
          },
        );
      } catch (e) {
        if (context.mounted) {
          AlertInfo.show(
            context: context,
            text: 'Error inesperado al cargar empleado',
            typeInfo: TypeInfo.error,
          );
          Navigator.of(context).pop();
        }
      }
    }

    // Update employee function
    Future<void> updateEmployee() async {
      if (!formKey.currentState!.validate()) return;

      // Para actualización, no se requiere contraseña si está vacía
      final password = passwordController.text.trim().isEmpty
          ? 'temp_password_not_updated' // La API debería ignorar esto o manejarlo
          : passwordController.text;

      final request = CreateEmployeeRequest(
        email: emailController.text.trim(),
        password: password,
        firstName: firstNameController.text.trim(),
        lastName: lastNameController.text.trim(),
        dni: dniController.text.trim(),
        phone: phoneController.text.trim().isEmpty
            ? null
            : phoneController.text.trim(),
        photoUrl: photoUrlController.text.trim().isEmpty
            ? null
            : photoUrlController.text.trim(),
        position: positionController.text.trim(),
        department: departmentController.text.trim(),
        shiftId: selectedShiftId.value,
      );

      try {
        // Show loading indicator
        FlutterAppBlurryLoader.show(context, text: 'Actualizando empleado...');

        // Call the use case directly instead of going through the provider
        final updateEmployeeUseCase = ref.read(updateEmployeeUseCaseProvider);
        final result = await updateEmployeeUseCase(employeeId, request);

        // Hide loader
        if (context.mounted) {
          FlutterAppBlurryLoader.hide(context);
        }

        // Check if widget is still mounted
        if (!context.mounted) return;

        // Handle the result directly
        result.fold(
          (failure) {
            if (!context.mounted) return;
            AlertInfo.show(
              context: context,
              text: 'Error al actualizar empleado: ${failure.message}',
              typeInfo: TypeInfo.error,
            );
          },
          (employeesResponse) {
            if (!context.mounted) return;

            if (employeesResponse.success) {
              // Show success message
              AlertInfo.show(
                context: context,
                text:
                    employeesResponse.message ??
                    'Empleado actualizado exitosamente',
                typeInfo: TypeInfo.success,
              );

              // Navigate back after a delay to let user see the alert
              Future.delayed(const Duration(milliseconds: 1500), () {
                if (context.mounted) {
                  Navigator.of(context).pop();
                }
              });

              // Refresh the employees list by calling the reload method
              Future.delayed(const Duration(milliseconds: 1600), () {
                if (context.mounted) {
                  final employeesStateNotifier = ref.read(
                    employeesStateNotifierProvider.notifier,
                  );
                  final request = ref.read(employeesRequestNotifierProvider);
                  employeesStateNotifier.loadEmployees(
                    request.copyWith(page: 1, limit: 10),
                  );
                }
              });
            } else {
              AlertInfo.show(
                context: context,
                text:
                    employeesResponse.message ?? 'Error al actualizar empleado',
                typeInfo: TypeInfo.error,
              );
            }
          },
        );
      } catch (e) {
        // Hide loader in case of error
        if (context.mounted) {
          FlutterAppBlurryLoader.hide(context);
        }

        if (!context.mounted) return;
        AlertInfo.show(
          context: context,
          text: 'Error inesperado al actualizar empleado: ${e.toString()}',
          typeInfo: TypeInfo.error,
        );
      }
    }

    // useEffect para cargar datos cuando se monta el widget
    useEffect(() {
      loadEmployeeData();
      return null;
    }, []);

    if (isLoading.value) {
      return Scaffold(
        appBar: AttendanceAppBar(
          title: 'Editar Empleado',
          leading: true,
          centerTitle: true,
        ),
        body: const Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      appBar: AttendanceAppBar(
        title: 'Editar Empleado',
        leading: true,
        centerTitle: true,
      ),
      body: Form(
        key: formKey,
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
                      controller: firstNameController,
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
                      controller: lastNameController,
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
                      controller: dniController,
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
                      controller: phoneController,
                      decoration: const InputDecoration(
                        labelText: 'Teléfono',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.phone),
                      ),
                      keyboardType: TextInputType.phone,
                    ),

                    TextFormField(
                      controller: photoUrlController,
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
                      controller: emailController,
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
                      controller: passwordController,
                      decoration: InputDecoration(
                        labelText: 'Nueva Contraseña (Opcional)',
                        helperText:
                            'Deja vacío para mantener la contraseña actual',
                        border: const OutlineInputBorder(),
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: Icon(
                            obscurePassword.value
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            obscurePassword.value = !obscurePassword.value;
                          },
                        ),
                      ),
                      obscureText: obscurePassword.value,
                      validator: (value) {
                        // La contraseña es opcional en edición
                        if (value != null && value.isNotEmpty) {
                          if (value.length < 6) {
                            return 'La contraseña debe tener al menos 6 caracteres';
                          }
                          if (!RegExp(r'[a-z]').hasMatch(value)) {
                            return 'La contraseña debe contener al menos una minúscula';
                          }
                          if (!RegExp(r'[0-9]').hasMatch(value)) {
                            return 'La contraseña debe contener al menos un número';
                          }
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
                      controller: positionController,
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
                      controller: departmentController,
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
                              initialValue: selectedShiftId.value,
                              decoration: const InputDecoration(
                                labelText: 'Turno *',
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(Icons.schedule),
                                helperText: 'Seleccione el turno de trabajo',
                              ),
                              items: shifts.map((shift) {
                                final timeFormat = DateFormat('HH:mm');
                                final startTime = timeFormat.format(
                                  shift.startTime,
                                );
                                final endTime = timeFormat.format(
                                  shift.endTime,
                                );
                                return DropdownMenuItem<String>(
                                  value: shift.id.toString(),
                                  child: Text(
                                    '${shift.name} ($startTime - $endTime)',
                                    style: context.appTextTheme.bodySmall,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                );
                              }).toList(),
                              onChanged: (value) {
                                selectedShiftId.value = value;
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
                onPressed: updateEmployee,
                style: FilledButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    vertical: DoubleSizes.size12,
                  ),
                ),
                child: const Text('Actualizar Empleado'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
