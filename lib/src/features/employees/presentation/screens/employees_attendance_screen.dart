import 'package:attendance_app/src/core/shared/widgets/attendance_app_bar.dart';
import 'package:attendance_app/src/features/employees/presentation/providers/calendar_provider.dart';
import 'package:attendance_app/src/features/employees/presentation/providers/employees_providers.dart';
import 'package:attendance_app/src/features/employees/presentation/widgets/calendar_header.dart';
import 'package:attendance_app/src/features/employees/presentation/widgets/calendar_view.dart';
import 'package:attendance_app/src/features/employees/presentation/widgets/daily_attendance_filters.dart';
import 'package:attendance_app/src/features/employees/presentation/widgets/daily_attendance_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EmployeesAttendanceScreen extends ConsumerStatefulWidget {
  const EmployeesAttendanceScreen({super.key});

  @override
  ConsumerState<EmployeesAttendanceScreen> createState() =>
      _EmployeesAttendanceScreenState();
}

class _EmployeesAttendanceScreenState
    extends ConsumerState<EmployeesAttendanceScreen> {
  String? _selectedDepartment;
  String? _selectedPosition;

  void _onFiltersChanged(String? department, String? position) {
    setState(() {
      _selectedDepartment = department;
      _selectedPosition = position;
    });

    // Primero invalidar ambos providers para limpiar el cache
    ref.invalidate(dailyAttendanceProvider);
    ref.invalidate(dailyAttendanceRequestNotifierProvider);

    // Luego actualizar los filtros en el provider
    Future.microtask(() {
      ref
          .read(dailyAttendanceRequestNotifierProvider.notifier)
          .updateFilters(department: department, position: position);
    });
  }

  void _showFilters() {
    DailyAttendanceFilters.show(
      context,
      selectedDepartment: _selectedDepartment,
      selectedPosition: _selectedPosition,
      onFiltersChanged: _onFiltersChanged,
    );
  }

  @override
  Widget build(BuildContext context) {
    final calendarState = ref.watch(calendarNotifierProvider);
    final selectedDate = calendarState.selectedDate;

    return Scaffold(
      appBar: AttendanceAppBar(
        title: 'Asistencia diaria',
        actions: [
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.filter_list),
                onPressed: _showFilters,
              ),
              // Indicador de filtros activos
              if (_selectedDepartment != null || _selectedPosition != null)
                Positioned(
                  right: 8,
                  top: 8,
                  child: Container(
                    width: 8,
                    height: 8,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          // Calendar section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: const CalendarHeader(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: const CalendarView(),
          ),

          // Active filters indicator
          if (_selectedDepartment != null || _selectedPosition != null)
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: Colors.blue.shade200),
              ),
              child: Wrap(
                children: [
                  const Icon(Icons.filter_list, size: 16, color: Colors.blue),
                  const SizedBox(width: 8),
                  const Text(
                    'Filtros activos: ',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.blue,
                    ),
                  ),
                  if (_selectedDepartment != null) ...[
                    Text(
                      'Depto: $_selectedDepartment',
                      style: const TextStyle(color: Colors.blue),
                    ),
                    if (_selectedPosition != null)
                      const Text(' • ', style: TextStyle(color: Colors.blue)),
                  ],
                  if (_selectedPosition != null)
                    Text(
                      'Posición: $_selectedPosition',
                      style: const TextStyle(color: Colors.blue),
                    ),
                ],
              ),
            ),

          // Divider
          const Divider(height: 1),
          // Attendance list section
          Expanded(child: DailyAttendanceList(selectedDate: selectedDate)),
        ],
      ),
    );
  }
}
