import 'package:attendance_app/src/core/shared/layout/double_value.dart';
import 'package:attendance_app/src/core/utils/date_time_utils.dart';
import 'package:flutter/material.dart';

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
    // Usar la utilidad para obtener fechas y horas locales
    final friendlyDate = DateTimeUtils.getFriendlyDateText(date);
    final localCheckInTime = DateTimeUtils.formatTimeLocal(checkInTime);
    final localCheckOutTime = checkOutTime != null
        ? DateTimeUtils.formatTimeLocal(checkOutTime!)
        : null;

    final difference = int.parse(friendlyDate['difference']!);
    final dateText = friendlyDate['dateText']!;
    final monthText = friendlyDate['monthText']!;

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
                        difference < 7 ? monthText : dateText,
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: statusColor,
                            ),
                      ),
                      Text(
                        difference < 7 ? dateText : monthText,
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
                      const SizedBox(height: DoubleSizes.size8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: DoubleSizes.size8,
                          vertical: DoubleSizes.size4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade50,
                          borderRadius: BorderRadius.circular(
                            DoubleSizes.size4,
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.login,
                                  size: 14,
                                  color: Colors.green.shade600,
                                ),
                                const SizedBox(width: DoubleSizes.size4),
                                Text(
                                  'Entrada: $localCheckInTime',
                                  style: Theme.of(context).textTheme.bodySmall
                                      ?.copyWith(fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            const SizedBox(height: DoubleSizes.size4),
                            Row(
                              children: [
                                Icon(
                                  Icons.logout,
                                  size: 14,
                                  color: localCheckOutTime != null
                                      ? Colors.red.shade600
                                      : Colors.grey.shade600,
                                ),
                                const SizedBox(width: DoubleSizes.size4),
                                Text(
                                  localCheckOutTime != null
                                      ? 'Salida: $localCheckOutTime'
                                      : 'Salida: Pendiente',
                                  style: Theme.of(context).textTheme.bodySmall
                                      ?.copyWith(
                                        fontWeight: FontWeight.w500,
                                        color: localCheckOutTime == null
                                            ? Colors.orange.shade700
                                            : null,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
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
                          ? DateTimeUtils.formatDuration(durationMins!)
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
}
