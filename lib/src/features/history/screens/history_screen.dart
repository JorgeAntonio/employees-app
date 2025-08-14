import 'package:attendance_app/src/core/shared/extensions/build_context.dart';
import 'package:attendance_app/src/core/shared/layout/double_value.dart';
import 'package:attendance_app/src/core/shared/widgets/attendance_app_bar.dart';
import 'package:attendance_app/src/core/shared/widgets/section_title.dart';
import 'package:attendance_app/src/features/history/widgets/filters_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HistoryScreen extends ConsumerStatefulWidget {
  const HistoryScreen({super.key});

  @override
  ConsumerState<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends ConsumerState<HistoryScreen> {
  // Mock data for demonstration
  final List<Map<String, dynamic>> _attendanceHistory = [
    {
      'date': '2024-10-25',
      'checkIn': '09:00 AM',
      'checkOut': '06:00 PM',
      'totalHours': '8h',
      'status': 'A tiempo',
      'statusColor': Colors.green,
    },
    {
      'date': '2024-10-24',
      'checkIn': '09:00 AM',
      'checkOut': '06:00 PM',
      'totalHours': '8h',
      'status': 'A tiempo',
      'statusColor': Colors.green,
    },
    {
      'date': '2024-10-23',
      'checkIn': '09:00 AM',
      'checkOut': '06:00 PM',
      'totalHours': '8h',
      'status': 'A tiempo',
      'statusColor': Colors.green,
    },
    {
      'date': '2024-10-22',
      'checkIn': '09:00 AM',
      'checkOut': '06:00 PM',
      'totalHours': '8h',
      'status': 'A tiempo',
      'statusColor': Colors.green,
    },
    {
      'date': '2024-10-21',
      'checkIn': '09:00 AM',
      'checkOut': '06:00 PM',
      'totalHours': '8h',
      'status': 'A tiempo',
      'statusColor': Colors.green,
    },
    {
      'date': '2024-10-20',
      'checkIn': '09:30 AM',
      'checkOut': '06:00 PM',
      'totalHours': '7h 30m',
      'status': 'Tardanza',
      'statusColor': Colors.orange,
    },
    {
      'date': '2024-10-19',
      'checkIn': null,
      'checkOut': null,
      'totalHours': '0h',
      'status': 'Ausente',
      'statusColor': Colors.red,
    },
  ];

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.appColorScheme;
    final textTheme = context.appTextTheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AttendanceAppBar(
        title: 'Historial',
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
              CustomText(
                title: 'Octubre 2024',
                isTitle: true,
                color: context.appColorScheme.onSurface,
              ),

              // History list
              Expanded(
                child: ListView.builder(
                  itemCount: _attendanceHistory.length,
                  itemBuilder: (context, index) {
                    final record = _attendanceHistory[index];
                    final isPresent = record['checkIn'] != null;

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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Date and status row
                          Row(
                            children: [
                              Text(
                                _formatDate(record['date'] as String),
                                style: textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: colorScheme.onSurface,
                                ),
                              ),
                              const Spacer(),

                              Text(
                                record['totalHours'] as String,
                                style: textTheme.bodySmall?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: colorScheme.onSurface,
                                ),
                              ),
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              if (isPresent) ...[
                                Flexible(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Entrada: ${record['checkIn']}',
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

                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: DoubleSizes.size8,
                                  vertical: DoubleSizes.size2,
                                ),
                                decoration: BoxDecoration(
                                  color: (record['statusColor'] as Color)
                                      .withValues(alpha: 0.1),
                                  borderRadius: BorderRadius.circular(
                                    DoubleSizes.size4,
                                  ),
                                ),
                                child: Text(
                                  record['status'] as String,
                                  style: textTheme.bodySmall?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: record['statusColor'] as Color,
                                  ),
                                ),
                              ),
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

  String _formatDate(String dateString) {
    final date = DateTime.parse(dateString);
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = today.subtract(const Duration(days: 1));
    final recordDate = DateTime(date.year, date.month, date.day);

    if (recordDate == today) {
      return 'Hoy';
    } else if (recordDate == yesterday) {
      return 'Ayer';
    } else {
      return '${date.day} de Octubre';
    }
  }
}
