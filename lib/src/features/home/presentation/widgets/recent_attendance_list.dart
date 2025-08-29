import 'package:attendance_app/src/core/shared/layout/double_value.dart';
import 'package:attendance_app/src/core/shared/widgets/attendance_card.dart';
import 'package:attendance_app/src/core/shared/widgets/attendance_card_skeleton.dart';
import 'package:attendance_app/src/core/shared/widgets/section_title.dart';
import 'package:attendance_app/src/features/home/presentation/providers/home_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecentAttendanceList extends ConsumerWidget {
  const RecentAttendanceList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userStatsAsync = ref.watch(userStatsProvider);

    return userStatsAsync.when(
      data: (userStats) {
        final recentAttendances = userStats.data.recentAttendances;

        if (recentAttendances.isEmpty) {
          return const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SectionTitle(title: 'Asistencias recientes'),
              SizedBox(height: DoubleSizes.size16),
              Center(
                child: Text(
                  'No hay asistencias recientes',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          );
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionTitle(title: 'Asistencias recientes'),
            const SizedBox(height: DoubleSizes.size16),
            ...recentAttendances
                .take(5)
                .map(
                  (attendance) => AttendanceCard(
                    date: DateTime.parse(attendance.date),
                    checkInTime: DateTime.parse(attendance.checkInTime),
                    checkOutTime: attendance.checkOutTime != null
                        ? DateTime.parse(attendance.checkOutTime!)
                        : null,
                    status: attendance.status,
                    durationMins: attendance.durationMins,
                  ),
                ),
          ],
        );
      },
      loading: () => const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(title: 'Asistencias recientes'),
          AttendanceCardLoading(),
        ],
      ),
      error: (error, stackTrace) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: 'Asistencias recientes'),
          const SizedBox(height: DoubleSizes.size16),
          Container(
            padding: const EdgeInsets.all(DoubleSizes.size16),
            decoration: BoxDecoration(
              color: Colors.red.shade50,
              borderRadius: BorderRadius.circular(DoubleSizes.size12),
              border: Border.all(color: Colors.red.shade200),
            ),
            child: Row(
              children: [
                Icon(Icons.error_outline, color: Colors.red.shade600),
                const SizedBox(width: DoubleSizes.size8),
                Expanded(
                  child: Text(
                    'Error al cargar asistencias recientes',
                    style: TextStyle(color: Colors.red.shade700),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
