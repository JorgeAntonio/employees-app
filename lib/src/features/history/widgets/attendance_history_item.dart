import 'package:attendance_app/src/core/shared/extensions/build_context.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/attendance_history_response.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AttendanceHistoryItemWidget extends StatelessWidget {
  final AttendanceHistoryItem attendance;
  final bool isLast;

  const AttendanceHistoryItemWidget({
    super.key,
    required this.attendance,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('dd/MM/yyyy');
    final timeFormat = DateFormat('HH:mm');
    final textTheme = context.appTextTheme;
    final colorTheme = context.appColorScheme;

    return Container(
      margin: EdgeInsets.only(bottom: isLast ? 0 : 12),
      child: Card(
        color: colorTheme.surface,
        elevation: 1,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header with date and status
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    dateFormat.format(attendance.date),
                    style: textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  _StatusChip(status: attendance.status),
                ],
              ),
              const SizedBox(height: 12),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Entrada: ${attendance.checkInTime != null ? timeFormat.format(attendance.checkInTime!) : '--:--'}',
                    style: textTheme.bodyMedium?.copyWith(
                      color: colorTheme.onSurfaceVariant,
                    ),
                  ),
                  Text(
                    'Salida: ${attendance.checkOutTime != null ? timeFormat.format(attendance.checkOutTime!) : '--:--'}',
                    style: textTheme.bodyMedium?.copyWith(
                      color: colorTheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 12),

              // Duration
              _InfoRow(
                icon: Icons.timer,
                label: 'Duración',
                value: _formatDuration(attendance.durationMins),
              ),

              // Location info (if available)
              if (attendance.checkInLocation != null ||
                  attendance.checkOutLocation != null) ...[
                const Divider(height: 24),
                if (attendance.checkInLocation != null)
                  _InfoRow(
                    icon: Icons.location_on,
                    label: 'Ubicación Entrada',
                    value: attendance.checkInLocation!.name,
                  ),
                if (attendance.checkOutLocation != null)
                  _InfoRow(
                    icon: Icons.location_on,
                    label: 'Ubicación Salida',
                    value: attendance.checkOutLocation!.name,
                  ),
              ],

              // Device info (if available)
              if (attendance.device != null) ...[
                const Divider(height: 24),
                _InfoRow(
                  icon: Icons.devices,
                  label: 'Dispositivo',
                  value:
                      '${attendance.device!.name} (${attendance.device!.os})',
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  String _formatDuration(int? minutes) {
    if (minutes == null) return 'N/A';
    if (minutes == 0) return '0 minutos';

    final hours = minutes ~/ 60;
    final mins = minutes % 60;

    if (hours == 0) {
      return '$mins minutos';
    } else if (mins == 0) {
      return '$hours horas';
    } else {
      return '$hours horas $mins minutos';
    }
  }
}

class _StatusChip extends StatelessWidget {
  final String status;

  const _StatusChip({required this.status});

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;
    Color textColor;
    String displayText;

    switch (status.toUpperCase()) {
      case 'PRESENT':
        backgroundColor = Colors.green[100]!;
        textColor = Colors.green[800]!;
        displayText = 'Presente';
        break;
      case 'ABSENT':
        backgroundColor = Colors.red[100]!;
        textColor = Colors.red[800]!;
        displayText = 'Ausente';
        break;
      case 'LATE':
        backgroundColor = Colors.orange[100]!;
        textColor = Colors.orange[800]!;
        displayText = 'Tardanza';
        break;
      default:
        backgroundColor = Colors.grey[100]!;
        textColor = Colors.grey[800]!;
        displayText = status;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        displayText,
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.w600,
          fontSize: 12,
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _InfoRow({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Icon(icon, size: 16, color: Colors.grey[600]),
          const SizedBox(width: 8),
          Text(
            '$label:',
            style: Theme.of(
              context,
            ).textTheme.bodySmall?.copyWith(color: Colors.grey[600]),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(value, style: Theme.of(context).textTheme.bodyMedium),
          ),
        ],
      ),
    );
  }
}
