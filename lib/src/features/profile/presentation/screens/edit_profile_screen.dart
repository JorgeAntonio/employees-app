import 'package:alert_info/alert_info.dart';
import 'package:attendance_app/src/core/shared/extensions/build_context.dart';
import 'package:attendance_app/src/core/shared/layout/layout.dart';
import 'package:attendance_app/src/core/shared/widgets/attendance_app_bar.dart';
import 'package:attendance_app/src/features/auth/presentation/providers/session_provider.dart';
import 'package:attendance_app/src/features/employees/domain/entities/update_employee_request.dart';
import 'package:attendance_app/src/features/profile/presentation/providers/profile_api_providers.dart';
import 'package:attendance_app/src/features/profile/presentation/providers/profile_providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EditProfileScreen extends ConsumerStatefulWidget {
  const EditProfileScreen({super.key});

  @override
  ConsumerState<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends ConsumerState<EditProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  final _phoneController = TextEditingController();

  @override
  void initState() {
    super.initState();

    // Inicializar con el teléfono del usuario actual
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final session = ref.read(sessionProvider);
      session.whenData((authSession) {
        if (authSession != null) {
          final employee = authSession.data.user.employee;
          _phoneController.text = employee.phone ?? '';
        }
      });
    });
  }

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final session = ref.watch(sessionProvider);
    final updateState = ref.watch(updateProfileNotifierProvider);

    return session.when(
      loading: () =>
          const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (error, stack) =>
          Scaffold(body: Center(child: Text('Error: $error'))),
      data: (authSession) {
        if (authSession == null) {
          return const Scaffold(
            body: Center(
              child: Text('No se pudo cargar la información del empleado'),
            ),
          );
        }

        final employee = authSession.data.user.employee;

        return Scaffold(
          backgroundColor: context.theme.colorScheme.surface,
          appBar: AttendanceAppBar(
            backgroundColor: context.theme.colorScheme.surface,
            centerTitle: true,
            title: 'Editar Perfil',
            leading: true,
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Form(
                key: _formKey,
                child: Column(
                  spacing: DoubleSizes.size24,
                  children: [
                    // Profile avatar
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF5E6D3),
                        shape: BoxShape.circle,
                      ),
                      child: Stack(
                        children: [
                          Center(
                            child: Icon(
                              Icons.person_rounded,
                              size: 60,
                              color: const Color(0xFF8B7355),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              width: 36,
                              height: 36,
                              decoration: BoxDecoration(
                                color: context.theme.primaryColor,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: context.theme.colorScheme.surface,
                                  width: 2,
                                ),
                              ),
                              child: const Icon(
                                Icons.camera_alt,
                                size: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Form fields
                    Column(
                      spacing: DoubleSizes.size16,
                      children: [
                        // Nombres (solo lectura)
                        TextFormField(
                          initialValue: employee.firstName,
                          decoration: InputDecoration(
                            labelText: 'Nombres',
                            border: const OutlineInputBorder(),
                            prefixIcon: const Icon(Icons.person),
                            suffixIcon: Icon(
                              Icons.lock_outline,
                              size: 16,
                              color: context.theme.colorScheme.outline,
                            ),
                            filled: true,
                            fillColor: context
                                .theme
                                .colorScheme
                                .surfaceContainerHighest
                                .withValues(alpha: 0.5),
                          ),
                          enabled: false,
                          style: TextStyle(
                            color: context.theme.colorScheme.onSurfaceVariant,
                          ),
                        ),

                        // Apellidos (solo lectura)
                        TextFormField(
                          initialValue: employee.lastName,
                          decoration: InputDecoration(
                            labelText: 'Apellidos',
                            border: const OutlineInputBorder(),
                            prefixIcon: const Icon(Icons.person_outline),
                            suffixIcon: Icon(
                              Icons.lock_outline,
                              size: 16,
                              color: context.theme.colorScheme.outline,
                            ),
                            filled: true,
                            fillColor: context
                                .theme
                                .colorScheme
                                .surfaceContainerHighest
                                .withValues(alpha: 0.5),
                          ),
                          enabled: false,
                          style: TextStyle(
                            color: context.theme.colorScheme.onSurfaceVariant,
                          ),
                        ),

                        // Teléfono (editable)
                        TextFormField(
                          controller: _phoneController,
                          decoration: InputDecoration(
                            labelText: 'Teléfono',
                            border: const OutlineInputBorder(),
                            prefixIcon: const Icon(Icons.phone),
                            helperText: '✏️ Campo editable',
                            helperStyle: TextStyle(
                              color: context.theme.colorScheme.primary,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          keyboardType: TextInputType.phone,
                        ),

                        // Cargo (solo lectura)
                        TextFormField(
                          initialValue: employee.position,
                          decoration: InputDecoration(
                            labelText: 'Cargo',
                            border: const OutlineInputBorder(),
                            prefixIcon: const Icon(Icons.work),
                            suffixIcon: Icon(
                              Icons.lock_outline,
                              size: 16,
                              color: context.theme.colorScheme.outline,
                            ),
                            filled: true,
                            fillColor: context
                                .theme
                                .colorScheme
                                .surfaceContainerHighest
                                .withValues(alpha: 0.5),
                          ),
                          enabled: false,
                          style: TextStyle(
                            color: context.theme.colorScheme.onSurfaceVariant,
                          ),
                        ),

                        // Departamento (solo lectura)
                        TextFormField(
                          initialValue: employee.department,
                          decoration: InputDecoration(
                            labelText: 'Departamento',
                            border: const OutlineInputBorder(),
                            prefixIcon: const Icon(Icons.business),
                            suffixIcon: Icon(
                              Icons.lock_outline,
                              size: 16,
                              color: context.theme.colorScheme.outline,
                            ),
                            filled: true,
                            fillColor: context
                                .theme
                                .colorScheme
                                .surfaceContainerHighest
                                .withValues(alpha: 0.5),
                          ),
                          enabled: false,
                          style: TextStyle(
                            color: context.theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),

                    // Información sobre campos editables
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: context.theme.colorScheme.primaryContainer
                            .withValues(alpha: 0.5),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: context.theme.colorScheme.primary.withValues(
                            alpha: 0.3,
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.info_outline,
                            color: context.theme.colorScheme.primary,
                            size: 20,
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Text(
                              'Solo puedes editar tu foto de perfil y número de teléfono. Los demás datos deben ser actualizados por Recursos Humanos.',
                              style: context.theme.textTheme.bodySmall
                                  ?.copyWith(
                                    color: context
                                        .theme
                                        .colorScheme
                                        .onPrimaryContainer,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Save button
                    SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: FilledButton(
                        onPressed: updateState.isLoading
                            ? null
                            : () => _saveChanges(employee.id),
                        child: updateState.isLoading
                            ? const SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    Colors.white,
                                  ),
                                ),
                              )
                            : const Text('Actualizar Teléfono'),
                      ),
                    ),

                    // Show success/error messages
                    updateState.when(
                      data: (response) {
                        if (response?.success == true) {
                          WidgetsBinding.instance.addPostFrameCallback((_) {
                            // Actualizar el perfil desde la API después del éxito
                            ref
                                .read(profileNotifierProvider.notifier)
                                .refreshProfile();

                            AlertInfo.show(
                              context: context,
                              text: 'Perfil actualizado exitosamente',
                            );
                            Navigator.of(context).pop();
                          });
                        }
                        return const SizedBox.shrink();
                      },
                      error: (error, stack) => Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.red.shade50,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.red.shade200),
                        ),
                        child: Text(
                          'Error: ${error.toString()}',
                          style: TextStyle(color: Colors.red.shade700),
                        ),
                      ),
                      loading: () => const SizedBox.shrink(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void _saveChanges(String employeeId) {
    if (_formKey.currentState?.validate() ?? false) {
      // Crear el request solo con el teléfono si no está vacío
      final updateRequest = UpdateEmployeeRequest(
        phone: _phoneController.text.trim().isNotEmpty
            ? _phoneController.text.trim()
            : null,
        // Solo actualizamos el teléfono
      );

      ref
          .read(updateProfileNotifierProvider.notifier)
          .updateProfile(employeeId, updateRequest);
    }
  }
}
