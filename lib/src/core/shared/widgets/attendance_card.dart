import 'package:attendance_app/src/core/shared/layout/double_value.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// Widget reutilizable para mostrar información de asistencia
/// Usado tanto en la lista de asistencias recientes como en el historial
class AttendanceCard extends StatelessWidget {
  final DateTime date;
  final DateTime checkInTime;
  final DateTime? checkOutTime;
  final String status;
  final int? durationMins;
  final EdgeInsets? margin;
  final VoidCallback? onTap;

  const AttendanceCard({
    super.key,
    required this.date,
    required this.checkInTime,
    this.checkOutTime,
    required this.status,
    this.durationMins,
    this.margin,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final timeFormat = DateFormat('HH:mm');

    Color statusColor;
    IconData statusIcon;

    switch (status.toUpperCase()) {
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
      margin: margin ?? const EdgeInsets.only(bottom: DoubleSizes.size8),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(DoubleSizes.size12),
          child: Container(
            padding: const EdgeInsets.all(DoubleSizes.size16),
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(DoubleSizes.size12),
              border: Border.all(color: Colors.grey.shade200),
            ),
            child: Row(
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
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(
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
                            _getStatusText(status),
                            style: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(
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
                                'Entrada: ${timeFormat.format(checkInTime)}',
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
                                checkOutTime != null
                                    ? 'Salida: ${timeFormat.format(checkOutTime!)}'
                                    : 'Salida: Pendiente',
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
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      durationMins != null
                          ? _formatDuration(durationMins!)
                          : '--',
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'horas',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _getStatusText(String status) {
    switch (status.toUpperCase()) {
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
