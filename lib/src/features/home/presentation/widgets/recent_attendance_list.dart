import 'package:attendance_app/src/core/shared/layout/double_value.dart';
import 'package:attendance_app/src/core/shared/widgets/section_title.dart';
import 'package:attendance_app/src/features/home/domain/entities/user_stats_entity.dart';
import 'package:attendance_app/src/features/home/presentation/providers/home_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

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
                  (attendance) => _RecentAttendanceCard(attendance: attendance),
                ),
          ],
        );
      },
      loading: () => const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(title: 'Asistencias recientes'),
          SizedBox(height: DoubleSizes.size16),
          _RecentAttendanceCardSkeleton(),
          SizedBox(height: DoubleSizes.size8),
          _RecentAttendanceCardSkeleton(),
          SizedBox(height: DoubleSizes.size8),
          _RecentAttendanceCardSkeleton(),
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

class _RecentAttendanceCard extends StatelessWidget {
  final RecentAttendance attendance;

  const _RecentAttendanceCard({required this.attendance});

  @override
  Widget build(BuildContext context) {
    final date = DateTime.parse(attendance.date);
    final checkIn = DateTime.parse(attendance.checkInTime);
    final checkOut = DateTime.parse(attendance.checkOutTime);

    final timeFormat = DateFormat('HH:mm');

    Color statusColor;
    IconData statusIcon;

    switch (attendance.status) {
      case 'PRESENT':
        statusColor = Colors.green;
        statusIcon = Icons.check_circle;
        break;
      case 'LATE':
        statusColor = Colors.orange;
        statusIcon = Icons.schedule;
        break;
      case 'ABSENT':
        statusColor = Colors.red;
        statusIcon = Icons.cancel;
        break;
      default:
        statusColor = Colors.grey;
        statusIcon = Icons.help;
    }

    return Container(
      margin: const EdgeInsets.only(bottom: DoubleSizes.size8),
      padding: const EdgeInsets.all(DoubleSizes.size16),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(DoubleSizes.size12),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Fecha
          Container(
            width: 60,
            padding: const EdgeInsets.symmetric(
              vertical: DoubleSizes.size8,
              horizontal: DoubleSizes.size12,
            ),
            decoration: BoxDecoration(
              color: statusColor.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(DoubleSizes.size8),
            ),
            child: Column(
              children: [
                Text(
                  date.day.toString(),
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: statusColor,
                  ),
                ),
                Text(
                  DateFormat('MMM', 'es').format(date).toUpperCase(),
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: statusColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: DoubleSizes.size16),

          // Información de horarios
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(statusIcon, color: statusColor, size: 16),
                    const SizedBox(width: DoubleSizes.size4),
                    Text(
                      _getStatusText(attendance.status),
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: statusColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: DoubleSizes.size4),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.login,
                          size: 14,
                          color: Colors.grey.shade600,
                        ),
                        const SizedBox(width: DoubleSizes.size4),
                        Text(
                          'Entrada: ${timeFormat.format(checkIn)}',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.logout,
                          size: 14,
                          color: Colors.grey.shade600,
                        ),
                        const SizedBox(width: DoubleSizes.size4),
                        Text(
                          'Salida: ${timeFormat.format(checkOut)}',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Duración
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _formatDuration(attendance.durationMins),
                style: Theme.of(
                  context,
                ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                'horas',
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(color: Colors.grey.shade600),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String _getStatusText(String status) {
    switch (status) {
      case 'PRESENT':
        return 'Presente';
      case 'LATE':
        return 'Tardanza';
      case 'ABSENT':
        return 'Ausente';
      default:
        return 'Desconocido';
    }
  }

  String _formatDuration(int minutes) {
    if (minutes < 60) {
      return '${minutes}m';
    }
    final hours = minutes ~/ 60;
    final remainingMinutes = minutes % 60;
    return remainingMinutes > 0
        ? '${hours}h ${remainingMinutes}m'
        : '${hours}h';
  }
}

class _RecentAttendanceCardSkeleton extends StatelessWidget {
  const _RecentAttendanceCardSkeleton();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: DoubleSizes.size8),
      padding: const EdgeInsets.all(DoubleSizes.size16),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(DoubleSizes.size12),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Row(
        children: [
          // Fecha skeleton
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(DoubleSizes.size8),
            ),
          ),
          const SizedBox(width: DoubleSizes.size16),

          // Información skeleton
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 16,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                const SizedBox(height: DoubleSizes.size8),
                Container(
                  height: 12,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ],
            ),
          ),

          // Duración skeleton
          Container(
            height: 16,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ],
      ),
    );
  }
}
