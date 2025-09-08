import 'package:attendance_app/src/core/shared/extensions/build_context.dart';
import 'package:attendance_app/src/core/shared/layout/layout.dart';
import 'package:flutter/material.dart';

class DailyAttendanceFilters extends StatefulWidget {
  final String? selectedDepartment;
  final String? selectedPosition;
  final Function(String?, String?) onFiltersChanged;

  const DailyAttendanceFilters({
    super.key,
    this.selectedDepartment,
    this.selectedPosition,
    required this.onFiltersChanged,
  });

  static void show(
    BuildContext context, {
    String? selectedDepartment,
    String? selectedPosition,
    required Function(String?, String?) onFiltersChanged,
  }) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => DailyAttendanceFilters(
        selectedDepartment: selectedDepartment,
        selectedPosition: selectedPosition,
        onFiltersChanged: onFiltersChanged,
      ),
    );
  }

  @override
  State<DailyAttendanceFilters> createState() => _DailyAttendanceFiltersState();
}

class _DailyAttendanceFiltersState extends State<DailyAttendanceFilters> {
  late String? _selectedDepartment;
  late String? _selectedPosition;

  final List<String> _departments = [
    'IT',
    'Recursos Humanos',
    'Ventas',
    'Marketing',
    'Finanzas',
    'Operaciones',
    'Administración',
    'Sistemas',
    'Tecnología',
  ];

  final List<String> _positions = [
    'Desarrollador',
    'Diseñador',
    'Analista',
    'Gerente',
    'Supervisor',
    'Coordinador',
    'Asistente',
    'Especialista',
    'Consultor',
    'Director',
    'Administrador',
  ];

  @override
  void initState() {
    super.initState();
    _selectedDepartment = widget.selectedDepartment;
    _selectedPosition = widget.selectedPosition;
  }

  void _applyFilters() {
    widget.onFiltersChanged(_selectedDepartment, _selectedPosition);
    Navigator.of(context).pop();
  }

  void _clearFilters() {
    setState(() {
      _selectedDepartment = null;
      _selectedPosition = null;
    });
    // Aplicar los filtros limpios inmediatamente
    widget.onFiltersChanged(null, null);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(DoubleSizes.size24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Filtros de Asistencia',
                    style: context.appTextTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
              const SizedBox(height: DoubleSizes.size24),

              // Department Filter
              Text(
                'Departamento',
                style: context.appTextTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: DoubleSizes.size12),
              DropdownButtonFormField<String>(
                initialValue: _selectedDepartment,
                decoration: InputDecoration(
                  hintText: 'Seleccionar departamento',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(DoubleSizes.size12),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: DoubleSizes.size16,
                    vertical: DoubleSizes.size12,
                  ),
                ),
                items: [
                  const DropdownMenuItem<String>(
                    value: null,
                    child: Text('Todos los departamentos'),
                  ),
                  ..._departments.map(
                    (department) => DropdownMenuItem<String>(
                      value: department,
                      child: Text(department),
                    ),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    _selectedDepartment = value;
                  });
                },
              ),
              const SizedBox(height: DoubleSizes.size24),

              // Position Filter
              Text(
                'Posición',
                style: context.appTextTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: DoubleSizes.size12),
              DropdownButtonFormField<String>(
                initialValue: _selectedPosition,
                decoration: InputDecoration(
                  hintText: 'Seleccionar posición',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(DoubleSizes.size12),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: DoubleSizes.size16,
                    vertical: DoubleSizes.size12,
                  ),
                ),
                items: [
                  const DropdownMenuItem<String>(
                    value: null,
                    child: Text('Todas las posiciones'),
                  ),
                  ..._positions.map(
                    (position) => DropdownMenuItem<String>(
                      value: position,
                      child: Text(position),
                    ),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    _selectedPosition = value;
                  });
                },
              ),
              const SizedBox(height: DoubleSizes.size32),

              // Action Buttons
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: _clearFilters,
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          vertical: DoubleSizes.size16,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            DoubleSizes.size12,
                          ),
                        ),
                      ),
                      child: const Text('Limpiar'),
                    ),
                  ),
                  const SizedBox(width: DoubleSizes.size16),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: _applyFilters,
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          vertical: DoubleSizes.size16,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            DoubleSizes.size12,
                          ),
                        ),
                      ),
                      child: const Text('Aplicar'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: DoubleSizes.size16),
            ],
          ),
        ),
      ),
    );
  }
}
