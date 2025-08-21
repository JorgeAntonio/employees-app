import 'package:attendance_app/src/core/router/router.dart';
import 'package:attendance_app/src/core/shared/extensions/extensions.dart';
import 'package:attendance_app/src/core/shared/layout/layout.dart';
import 'package:attendance_app/src/core/shared/widgets/attendance_app_bar.dart';
import 'package:attendance_app/src/core/shared/widgets/section_title.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/attendance_history_response.dart';
import 'package:attendance_app/src/features/employees/domain/entities/employee_entity.dart';
import 'package:attendance_app/src/features/employees/presentation/providers/employees_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:go_router/go_router.dart';

class EmployeesScreen extends ConsumerWidget {
  const EmployeesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AttendanceAppBar(
        title: 'Empleados',
        leading: true,
        centerTitle: true,
      ),
      floatingActionButton: SpeedDial(
        backgroundColor: context.appColorScheme.secondary,
        foregroundColor: context.appColorScheme.onSecondary,
        icon: Icons.add,
        activeIcon: Icons.close,
        children: [
          SpeedDialChild(
            backgroundColor: Colors.green,
            foregroundColor: context.appColorScheme.onPrimary,
            child: const Icon(Icons.upload_file),
            label: 'Importar',
            onTap: () => context.pushNamed(Routes.importEmployees.name),
          ),
          SpeedDialChild(
            backgroundColor: Colors.purple,
            foregroundColor: context.appColorScheme.onTertiary,
            child: const Icon(Icons.add),
            label: 'Agregar',
            onTap: () {
              // acción agregar
            },
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(_employeesProvider);
          // Add a small delay to ensure the refresh indicator is visible
          await Future.delayed(const Duration(milliseconds: 500));
        },
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(DoubleSizes.size16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: DoubleSizes.size16,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.refresh,
                      size: 20,
                      color: context.appColorScheme.onSurfaceVariant,
                    ),
                    SizedBox(width: 4),
                    SectionTitle(title: 'Pull para actualizar'),
                  ],
                ),
                _EmployeesList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _EmployeesList extends ConsumerWidget {
  const _EmployeesList();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getEmployeesUseCase = ref.watch(getEmployeesUseCaseProvider);

    return FutureBuilder<void>(
      future: _loadEmployees(ref, getEmployeesUseCase),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        return Consumer(
          builder: (context, ref, child) {
            final employeesAsyncValue = ref.watch(_employeesProvider);

            return employeesAsyncValue.when(
              data: (employeesResponse) {
                final employees = employeesResponse.data?.employees ?? [];
                if (employees.isEmpty) {
                  return RefreshIndicator(
                    onRefresh: () async {
                      ref.invalidate(_employeesProvider);
                      await Future.delayed(const Duration(milliseconds: 500));
                    },
                    child: SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.4,
                        child: const Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'No hay empleados registrados',
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Desliza hacia abajo para actualizar',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }

                return Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: employees.length,
                      itemBuilder: (context, index) {
                        final employee = employees[index];
                        return _EmployeeCard(employee: employee);
                      },
                    ),
                    const SizedBox(height: 16),
                    _PaginationInfo(
                      pagination:
                          employeesResponse.data?.pagination ??
                          PaginationInfo(
                            page: 1,
                            limit: 10,
                            total: 0,
                            totalPages: 1,
                          ),
                    ),
                  ],
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stackTrace) => RefreshIndicator(
                onRefresh: () async {
                  ref.invalidate(_employeesProvider);
                  await Future.delayed(const Duration(milliseconds: 500));
                },
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.error_outline,
                            size: 48,
                            color: Colors.red,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Error al cargar empleados: $error',
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 16),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Desliza hacia abajo para actualizar',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          const SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: () => ref.refresh(_employeesProvider),
                            child: const Text('Reintentar'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  Future<void> _loadEmployees(WidgetRef ref, getEmployeesUseCase) async {
    // Trigger the provider to load data
    ref.read(_employeesProvider);
  }
}

final _employeesProvider = FutureProvider<EmployeesResponse>((ref) async {
  final getEmployeesUseCase = ref.watch(getEmployeesUseCaseProvider);
  final result = await getEmployeesUseCase();

  return result.fold(
    (failure) => throw Exception(failure.message),
    (success) => success,
  );
});

class _EmployeeCard extends StatelessWidget {
  final Employee employee;

  const _EmployeeCard({required this.employee});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showEmployeeDetails(context, employee),
      child: Card(
        elevation: 0,
        margin: EdgeInsets.only(bottom: DoubleSizes.size16),
        color: context.appColorScheme.surfaceContainerLow,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: DoubleSizes.size12,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: employee.photoUrl != null
                    ? NetworkImage(employee.photoUrl!)
                    : null,
                child: employee.photoUrl == null
                    ? Text(
                        '${employee.firstName[0]}${employee.lastName[0]}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      )
                    : null,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            '${employee.firstName} ${employee.lastName}',
                            style: context.appTextTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.chevron_right_outlined,
                          size: 20,
                          color: context.appColorScheme.gray,
                        ),
                      ],
                    ),
                    Gaps.gap8,
                    _InfoRow(icon: Icon(Icons.work), value: employee.position),
                    _InfoRow(
                      icon: Icon(Icons.business),
                      value: employee.department,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showEmployeeDetails(BuildContext context, Employee employee) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: _EmployeeDetailsContent(employee: employee),
        );
      },
    );
  }
}

class _InfoRow extends StatelessWidget {
  final Icon icon;
  final String value;

  const _InfoRow({required this.icon, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: DoubleSizes.size4,
      children: [
        Icon(icon.icon, size: 14, color: context.appColorScheme.gray),
        Text(
          value,
          style: TextStyle(fontSize: 14, color: context.appColorScheme.gray),
        ),
      ],
    );
  }
}

class _PaginationInfo extends StatelessWidget {
  final PaginationInfo pagination;

  const _PaginationInfo({required this.pagination});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Página ${pagination.page} de ${pagination.totalPages}',
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          Text(
            'Total: ${pagination.total} empleados',
            style: TextStyle(fontSize: 14, color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }
}

class _EmployeeDetailsContent extends StatelessWidget {
  final Employee employee;

  const _EmployeeDetailsContent({required this.employee});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DraggableScrollableSheet(
        initialChildSize: 0.5,
        minChildSize: 0.3,
        maxChildSize: 0.9,
        expand: false,
        builder: (context, scrollController) {
          return Padding(
            padding: const EdgeInsets.all(DoubleSizes.size16),
            child: Column(
              children: [
                // Header fijo con botones y título
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () => context.goNamed(
                        Routes.editEmployee.name,
                        pathParameters: {'id': employee.id.toString()},
                      ),
                      icon: Icon(Icons.edit_square),
                      tooltip: 'Editar',
                    ),
                    Text('Detalles', style: context.appTextTheme.titleMedium),
                    IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: Icon(Icons.expand_circle_down_sharp),
                      tooltip: 'Cerrar',
                    ),
                  ],
                ),
                const Divider(height: DoubleSizes.size8, thickness: 1),

                // Contenido scrollable
                Expanded(
                  child: SingleChildScrollView(
                    controller: scrollController,
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      spacing: DoubleSizes.size16,
                      children: [
                        Gaps.gap4,

                        // Header con foto y nombre
                        _EmployeeHeader(employee: employee),

                        // Información personal
                        _DetailSection(
                          title: 'Información Personal',
                          icon: Icons.person,
                          children: [
                            _DetailItem(label: 'DNI', value: employee.dni),
                            _DetailItem(
                              label: 'Email',
                              value: employee.user.email,
                            ),
                            if (employee.phone != null)
                              _DetailItem(
                                label: 'Teléfono',
                                value: employee.phone!,
                              ),
                          ],
                        ),

                        // Información laboral
                        _DetailSection(
                          title: 'Información Laboral',
                          icon: Icons.work,
                          children: [
                            _DetailItem(
                              label: 'Cargo',
                              value: employee.position,
                            ),
                            _DetailItem(
                              label: 'Departamento',
                              value: employee.department,
                            ),
                            _DetailItem(
                              label: 'Rol',
                              value: employee.user.role,
                            ),
                            if (employee.shift != null)
                              _DetailItem(
                                label: 'Turno',
                                value: employee.shift!.name,
                              ),
                            if (employee.shift != null)
                              _DetailItem(
                                label: 'Horario',
                                value:
                                    '${employee.shift!.startTime} - ${employee.shift!.endTime}',
                              ),
                          ],
                        ),

                        // Información de cuenta
                        _DetailSection(
                          title: 'Información de Cuenta',
                          icon: Icons.account_circle,
                          children: [
                            _DetailItem(
                              label: 'Usuario ID',
                              value: employee.user.id.toString(),
                            ),
                            _DetailItem(
                              label: 'Empleado ID',
                              value: employee.id.toString(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _EmployeeHeader extends StatelessWidget {
  final Employee employee;

  const _EmployeeHeader({required this.employee});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.appColorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: context.appColorScheme.outline.withValues(alpha: 0.2),
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: employee.photoUrl != null
                ? NetworkImage(employee.photoUrl!)
                : null,
            child: employee.photoUrl == null
                ? Text(
                    '${employee.firstName[0]}${employee.lastName[0]}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  )
                : null,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${employee.firstName} ${employee.lastName}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  employee.position,
                  style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _DetailSection extends StatelessWidget {
  final String title;
  final IconData icon;
  final List<Widget> children;

  const _DetailSection({
    required this.title,
    required this.icon,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, size: 20, color: context.appColorScheme.primary),
            const SizedBox(width: 8),
            Text(
              title,
              style: context.appTextTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: context.appColorScheme.primary,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: context.appColorScheme.surfaceContainerLow,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: context.appColorScheme.outline.withValues(alpha: 0.2),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children,
          ),
        ),
      ],
    );
  }
}

class _DetailItem extends StatelessWidget {
  final String label;
  final String value;

  const _DetailItem({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              '$label:',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.grey[700],
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black87,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
