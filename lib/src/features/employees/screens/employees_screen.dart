
import 'package:attendance_app/src/core/shared/extensions/build_context.dart';
import 'package:attendance_app/src/core/shared/layout/double_value.dart';
import 'package:attendance_app/src/core/shared/widgets/attendance_app_bar.dart';
import 'package:attendance_app/src/core/shared/widgets/section_title.dart';
import 'package:attendance_app/src/features/history/widgets/filters_bottom_sheet.dart';
import 'package:flutter/material.dart';

class EmployeesScreen extends StatefulWidget {
  const EmployeesScreen({super.key});

  @override
  State<EmployeesScreen> createState() => _EmployeesScreenState();
}

class _EmployeesScreenState extends State<EmployeesScreen> {
  // final String _selectedTimeFilter = 'Semana';
  // final List<String> _timeFilters = ['Semana', 'Quincena', 'Mes'];

  // Mock data for demonstration
  final List<Map<String, dynamic>> _attendanceHistory = [
    {
      'name': 'Juan Pérez',
      'workstation': 'Jefe de Proyecto',
      'checkOut': '06:00 PM',
      'totalHours': '8h',
      // 'status': 'A tiempo',
      'statusColor': Colors.green,
    },
    {
      'name': 'María García',
      'workstation': 'Desarrolladora',
      'checkOut': '06:00 PM',
      'totalHours': '8h',
      'status': 'A tiempo',
      'statusColor': Colors.green,
    },
    {
      'name': 'Pedro Sánchez',
      'workstation': 'Desarrollador',
      'checkOut': '06:00 PM',
      'totalHours': '8h',
      // 'status': 'A tiempo',
      'statusColor': Colors.green,
    },
    {
      'name': 'Olga Martínez',
      'workstation': 'Diseñadora',
      'checkOut': '06:00 PM',
      'totalHours': '8h',
      // 'status': 'A tiempo',
      'statusColor': Colors.green,
    },
    {
      'name': 'Tomás López',
      'workstation': 'Desarrollador',
      'checkOut': '06:00 PM',
      'totalHours': '8h',
      // 'status': 'A tiempo',
      'statusColor': Colors.green,
    },
    {
      'name': 'Gabriel Torres',
      'workstation': 'Analista',
      'checkOut': '06:00 PM',
      'totalHours': '7h 30m',
      // 'status': 'Tardanza',
      'statusColor': Colors.orange,
    },
    {
      'name': 'Laura Gómez',
      'workstation': 'Analista',
      'checkOut': null,
      'totalHours': '8h',
      // 'status': 'Ta',
      'statusColor': Colors.orange,
    },
  ];

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.appColorScheme;
    final textTheme = context.appTextTheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AttendanceAppBar(
        title: 'Empleados',
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                showDragHandle: false,
                elevation: 0,
                useSafeArea: true,
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(DoubleSizes.size16),
                  ),
                ),
                builder: (context) => FiltersBottomSheet(),
              );
            },
            icon: Icon(
              Icons.filter_list_rounded,
              color: context.appColorScheme.onPrimary,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(DoubleSizes.size16),
          child: Column(
            spacing: DoubleSizes.size16,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // CustomText(
              //   title: 'Octubre 2024',
              //   isTitle: true,
              //   color: context.appColorScheme.onSurface,
              // ),

              // History list
              Expanded(
                child: ListView.builder(
                  itemCount: _attendanceHistory.length,
                  itemBuilder: (context, index) {
                    final record = _attendanceHistory[index];
                    final isPresent = record['workstation'] != null;

                    return Container(
                      margin: const EdgeInsets.only(bottom: DoubleSizes.size16),
                      padding: const EdgeInsets.all(DoubleSizes.size16),
                      decoration: BoxDecoration(
                        color: colorScheme.surface,
                        borderRadius: BorderRadius.circular(DoubleSizes.size16),
                        border: Border.all(
                          color: colorScheme.outlineVariant,
                          width: 1,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          // Date and status row
                          Row(
                            
                            children: [
                              
                              Text(
                                '${record['name']}',
                                // 'Entrada: ${record['checkIn']}',
                                style: textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: colorScheme.onSurface,
                                ),
                              ),
                              const Spacer(),

                              // Text(
                              //   record['totalHours'] as String,
                              //   style: textTheme.bodySmall?.copyWith(
                              //     fontWeight: FontWeight.w600,
                              //     color: colorScheme.onSurface,
                              //   ),
                              // ),
                              Container(
                                height: DoubleSizes.size40,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: DoubleSizes.size8,
                                  vertical: DoubleSizes.size2,
                                ),
                                decoration: BoxDecoration(
                                  // color: (record['statusColor'] as Color)
                                  //     .withValues(alpha: 0.1),
                                  borderRadius: BorderRadius.circular(
                                    DoubleSizes.size4,
                                  ),
                                ),
                                child: CircleAvatar(
                                  child: Icon(Icons.person, size: DoubleSizes.size32),
                                ),
                              ),
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              if (isPresent) ...[
                                Flexible(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Puesto: ${record['workstation']}',
                                        style: textTheme.bodyMedium?.copyWith(
                                          color: colorScheme.onSurfaceVariant,
                                        ),
                                      ),
                                      Text(
                                        'Salida: ${record['checkOut']}',
                                        style: textTheme.bodyMedium?.copyWith(
                                          color: colorScheme.onSurfaceVariant,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: DoubleSizes.size12),
                              ],

                              if (!isPresent) ...[
                                const SizedBox(height: DoubleSizes.size4),
                                Text(
                                  'Sin registro de asistencia',
                                  style: textTheme.bodyMedium?.copyWith(
                                    color: colorScheme.onSurfaceVariant,
                                  ),
                                ),
                              ],

                              
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
