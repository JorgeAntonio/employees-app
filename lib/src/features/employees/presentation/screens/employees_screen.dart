import 'package:attendance_app/src/core/router/router.dart';
import 'package:attendance_app/src/core/shared/extensions/build_context.dart';
import 'package:attendance_app/src/core/shared/layout/double_value.dart';
import 'package:attendance_app/src/core/shared/widgets/attendance_app_bar.dart';
import 'package:attendance_app/src/core/shared/widgets/section_title.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/attendance_history_response.dart';
import 'package:attendance_app/src/features/employees/domain/entities/employee_entity.dart';
import 'package:attendance_app/src/features/employees/presentation/providers/employees_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class EmployeesScreen extends ConsumerWidget {
  const EmployeesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AttendanceAppBar(
        title: 'Gestionar Empleados',
        leading: true,
        centerTitle: true,
        actions: [
          // import excel
          IconButton(
            onPressed: () {
              context.pushNamed(Routes.importEmployees.name);
            },
            icon: Icon(Icons.import_export),
            tooltip: 'Importar empleados',
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
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 24,
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
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${employee.firstName} ${employee.lastName}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        employee.position,
                        style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            _InfoRow(label: 'DNI', value: employee.dni),
            _InfoRow(label: 'Departamento', value: employee.department),
            _InfoRow(label: 'Email', value: employee.user.email),
            _InfoRow(label: 'Rol', value: employee.user.role),
            if (employee.phone != null)
              _InfoRow(label: 'Teléfono', value: employee.phone!),
            if (employee.shift != null)
              _InfoRow(
                label: 'Turno',
                value:
                    '${employee.shift!.name} (${employee.shift!.startTime} - ${employee.shift!.endTime})',
              ),
          ],
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const _InfoRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              '$label:',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.grey[700],
              ),
            ),
          ),
          Expanded(child: Text(value, style: const TextStyle(fontSize: 14))),
        ],
      ),
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
