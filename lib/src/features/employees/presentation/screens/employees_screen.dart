import 'package:attendance_app/src/core/router/router.dart';
import 'package:attendance_app/src/core/shared/extensions/extensions.dart';
import 'package:attendance_app/src/core/shared/layout/layout.dart';
import 'package:attendance_app/src/core/shared/widgets/attendance_app_bar.dart';
import 'package:attendance_app/src/core/theme/theme.dart';
import 'package:attendance_app/src/features/employees/domain/entities/employee_entity.dart';
import 'package:attendance_app/src/features/employees/presentation/providers/employees_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class EmployeesScreen extends ConsumerStatefulWidget {
  const EmployeesScreen({super.key});

  @override
  ConsumerState<EmployeesScreen> createState() => _EmployeesScreenState();
}

class _EmployeesScreenState extends ConsumerState<EmployeesScreen> {
  int _currentPage = 1;
  final int _limit = 10;
  bool _isLoadingMore = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadEmployees();
    });
  }

  Future<void> _loadEmployees() async {
    final request = ref.read(employeesRequestNotifierProvider);
    final employeesStateNotifier = ref.read(
      employeesStateNotifierProvider.notifier,
    );

    await employeesStateNotifier.loadEmployees(
      request.copyWith(page: 1, limit: _limit),
    );
    _currentPage = 1;
  }

  Future<void> _onPageChanged() async {
    if (_isLoadingMore) return;

    final currentState = ref.read(employeesStateNotifierProvider);
    if (!currentState.hasValue || currentState.value == null) return;

    final response = currentState.value!;
    final hasMorePages =
        response.data != null &&
        response.data!.pagination.page < response.data!.pagination.totalPages;

    if (!hasMorePages) return;

    setState(() {
      _isLoadingMore = true;
    });

    try {
      final nextPage = _currentPage + 1;
      final request = ref.read(employeesRequestNotifierProvider);
      final employeesStateNotifier = ref.read(
        employeesStateNotifierProvider.notifier,
      );

      await employeesStateNotifier.loadMoreEmployees(
        request.copyWith(page: nextPage, limit: _limit),
      );
      _currentPage = nextPage;
    } catch (e) {
      // Handle error
    } finally {
      if (mounted) {
        setState(() {
          _isLoadingMore = false;
        });
      }
    }
  }

  Future<void> _onRefresh() async {
    final employeesStateNotifier = ref.read(
      employeesStateNotifierProvider.notifier,
    );
    employeesStateNotifier.clearEmployees();
    _currentPage = 1;
    await _loadEmployees();
  }

  void _onFiltersChanged() {
    final employeesStateNotifier = ref.read(
      employeesStateNotifierProvider.notifier,
    );
    employeesStateNotifier.clearEmployees();
    _currentPage = 1;
    _loadEmployees();
  }

  // Mostrar info dialog
  void _showInfoDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Row(
            spacing: DoubleSizes.size8,
            children: [
              const Icon(Icons.info_outline, color: Palette.info),
              const Text('Información'),
            ],
          ),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: const Icon(Icons.people_outline, color: Colors.blue),
                  title: const Text(
                    'Aquí puedes ver la información de los empleados.',
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.search, color: Colors.green),
                  title: const Text(
                    'Puedes filtrar y buscar empleados utilizando la barra de búsqueda.',
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.add_circle_outline,
                    color: Colors.purple,
                  ),
                  title: const Text(
                    'Para agregar un nuevo empleado, utiliza el botón de acción flotante.',
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.edit, color: Colors.orange),
                  title: const Text(
                    'Para editar un empleado, toca sobre su tarjeta.',
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.upload_file, color: Colors.teal),
                  title: const Text(
                    'Para importar empleados, utiliza la opción de importación en el botón de acción flotante.',
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.refresh, color: Colors.red),
                  title: const Text(
                    'Para recargar la lista de empleados, utiliza el gesto de deslizamiento hacia abajo.',
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cerrar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final employeesState = ref.watch(employeesStateNotifierProvider);

    return Scaffold(
      appBar: AttendanceAppBar(
        title: 'Empleados',
        leading: true,
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: _showInfoDialog,
            tooltip: 'Información',
          ),
        ],
      ),
      floatingActionButton: SpeedDial(
        backgroundColor: context.appColorScheme.secondary,
        foregroundColor: context.appColorScheme.onSecondary,
        icon: Icons.add,
        activeIcon: Icons.close,
        children: [
          SpeedDialChild(
            backgroundColor: context.appColorScheme.tertiary,
            foregroundColor: context.appColorScheme.onTertiary,
            child: const Icon(Icons.upload_file),
            label: 'Importar',
            onTap: () => context.pushNamed(Routes.importEmployees.name),
          ),
          SpeedDialChild(
            backgroundColor: context.appColorScheme.primary,
            foregroundColor: context.appColorScheme.onPrimary,
            child: const Icon(Icons.add),
            label: 'Agregar',
            onTap: () => context.pushNamed(Routes.addEmployee.name),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(DoubleSizes.size16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _SearchAndFilters(onFiltersChanged: _onFiltersChanged),
            SizedBox(height: DoubleSizes.size16),
            Expanded(
              child: employeesState.when(
                data: (employeesResponse) {
                  if (employeesResponse == null ||
                      employeesResponse.data == null) {
                    return const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.people_outline,
                            size: 64,
                            color: Colors.grey,
                          ),
                          SizedBox(height: 16),
                          Text(
                            'No hay empleados disponibles',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                        ],
                      ),
                    );
                  }

                  return _EmployeesList(
                    employees: employeesResponse.data!.employees,
                    onPageChanged: _onPageChanged,
                    isLoadingMore: _isLoadingMore,
                    onRefresh: _onRefresh,
                  );
                },
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (error, stackTrace) => RefreshIndicator(
                  onRefresh: _onRefresh,
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.7,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.error_outline,
                              size: 64,
                              color: Colors.red,
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Error al cargar empleados',
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              error.toString(),
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            const SizedBox(height: 16),
                            ElevatedButton(
                              onPressed: _loadEmployees,
                              child: const Text('Reintentar'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _EmployeesList extends ConsumerStatefulWidget {
  const _EmployeesList({
    required this.employees,
    required this.onPageChanged,
    required this.isLoadingMore,
    required this.onRefresh,
  });

  final List<Employee> employees;
  final VoidCallback onPageChanged;
  final bool isLoadingMore;
  final Future<void> Function() onRefresh;

  @override
  ConsumerState<_EmployeesList> createState() => _EmployeesListState();
}

class _EmployeesListState extends ConsumerState<_EmployeesList> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      widget.onPageChanged();
    }
  }

  @override
  Widget build(BuildContext context) {
    final employees = widget.employees;

    if (employees.isEmpty) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.people_outline, size: 64, color: Colors.grey),
            SizedBox(height: 16),
            Text(
              'No hay empleados disponibles',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: widget.onRefresh,
      child: ListView.builder(
        controller: _scrollController,
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: employees.length + (widget.isLoadingMore ? 1 : 0),
        itemBuilder: (context, index) {
          if (index == employees.length) {
            // Mostrar indicador de carga al final
            return const Padding(
              padding: EdgeInsets.all(16.0),
              child: Center(child: CircularProgressIndicator()),
            );
          }

          final employee = employees[index];
          return _EmployeeCard(employee: employee);
        },
      ),
    );
  }
}

class _SearchAndFilters extends ConsumerStatefulWidget {
  const _SearchAndFilters({required this.onFiltersChanged});

  final VoidCallback onFiltersChanged;

  @override
  ConsumerState<_SearchAndFilters> createState() => _SearchAndFiltersState();
}

class _SearchAndFiltersState extends ConsumerState<_SearchAndFilters> {
  final _searchController = TextEditingController();
  String? _selectedDepartment;
  String? _selectedPosition;
  bool _isExpanded = false;

  final List<String> _departments = [
    'Recursos Humanos',
    'Tecnología',
    'Ventas',
    'Marketing',
    'Finanzas',
    'Operaciones',
  ];

  final List<String> _positions = [
    'Gerente',
    'Supervisor',
    'Analista',
    'Asistente',
    'Coordinador',
    'Especialista',
  ];

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Barra de búsqueda
        TextField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText: 'Buscar empleados...',
            prefixIcon: const Icon(Icons.search),
            suffixIcon: IconButton(
              icon: Icon(_isExpanded ? Icons.expand_less : Icons.expand_more),
              onPressed: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          ),
          onChanged: (value) => _applyFilters(),
        ),
        // Filtros expandibles
        if (_isExpanded) ...[
          const SizedBox(height: 16),
          Column(
            spacing: DoubleSizes.size12,
            children: [
              DropdownButtonFormField<String>(
                initialValue: _selectedDepartment,
                decoration: InputDecoration(
                  labelText: 'Departamento',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                items: _departments.map((dept) {
                  return DropdownMenuItem(
                    value: dept,
                    child: Text(dept, style: context.appTextTheme.bodyMedium),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedDepartment = value;
                  });
                  _applyFilters();
                },
              ),
              DropdownButtonFormField<String>(
                initialValue: _selectedPosition,
                decoration: InputDecoration(
                  labelText: 'Posición',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                items: _positions.map((pos) {
                  return DropdownMenuItem(
                    value: pos,
                    child: Text(pos, style: context.appTextTheme.bodyMedium),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedPosition = value;
                  });
                  _applyFilters();
                },
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: _clearFilters,
                child: const Text('Limpiar filtros'),
              ),
            ],
          ),
        ],
      ],
    );
  }

  void _applyFilters() {
    final notifier = ref.read(employeesRequestNotifierProvider.notifier);
    if (_searchController.text.isNotEmpty) {
      notifier.updateSearch(_searchController.text);
    } else {
      notifier.updateSearch(null);
    }
    notifier.updateFilters(
      department: _selectedDepartment,
      position: _selectedPosition,
    );
    widget.onFiltersChanged();
  }

  void _clearFilters() {
    setState(() {
      _searchController.clear();
      _selectedDepartment = null;
      _selectedPosition = null;
    });
    ref
        .read(employeesRequestNotifierProvider.notifier)
        .updateFilters(department: null, position: null);
    ref.read(employeesRequestNotifierProvider.notifier).updateSearch(null);
    widget.onFiltersChanged();
  }
}

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
                      onPressed: () => context.pushNamed(
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
                                value: () {
                                  final timeFormat = DateFormat('HH:mm');
                                  final startTime = timeFormat.format(employee.shift!.startTime);
                                  final endTime = timeFormat.format(employee.shift!.endTime);
                                  return '$startTime - $endTime';
                                }(),
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
