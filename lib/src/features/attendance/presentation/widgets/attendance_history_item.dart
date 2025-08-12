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

    return Container(
      margin: EdgeInsets.only(bottom: isLast ? 0 : 12),
      child: Card(
        elevation: 2,
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
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  _StatusChip(status: attendance.status),
                ],
              ),
              const SizedBox(height: 12),

              // Employee info
              _InfoRow(
                icon: Icons.person,
                label: 'Empleado',
                value:
                    '${attendance.employee.firstName} ${attendance.employee.lastName}',
              ),
              _InfoRow(
                icon: Icons.badge,
                label: 'DNI',
                value: attendance.employee.dni,
              ),
              _InfoRow(
                icon: Icons.work,
                label: 'Cargo',
                value: attendance.employee.position,
              ),
              _InfoRow(
                icon: Icons.business,
                label: 'Departamento',
                value: attendance.employee.department,
              ),

              const Divider(height: 24),

              // Time info
              Row(
                children: [
                  Expanded(
                    child: _TimeInfo(
                      icon: Icons.login,
                      label: 'Entrada',
                      time: attendance.checkInTime,
                      timeFormat: timeFormat,
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: _TimeInfo(
                      icon: Icons.logout,
                      label: 'Salida',
                      time: attendance.checkOutTime,
                      timeFormat: timeFormat,
                      color: Colors.red,
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

  String _formatDuration(int minutes) {
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

class _TimeInfo extends StatelessWidget {
  final IconData icon;
  final String label;
  final DateTime? time;
  final DateFormat timeFormat;
  final Color color;

  const _TimeInfo({
    required this.icon,
    required this.label,
    required this.time,
    required this.timeFormat,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color.withOpacity(0.3)),
      ),
      child: Column(
        children: [
          Icon(icon, color: color, size: 20),
          const SizedBox(height: 4),
          Text(
            label,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: color,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            time != null ? timeFormat.format(time!) : '--:--',
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
