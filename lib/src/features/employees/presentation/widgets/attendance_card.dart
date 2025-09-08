import 'package:attendance_app/src/core/shared/extensions/extensions.dart';
import 'package:attendance_app/src/core/shared/layout/layout.dart';
import 'package:attendance_app/src/core/utils/date_time_utils.dart';
import 'package:attendance_app/src/core/utils/status_text.dart';
import 'package:attendance_app/src/features/employees/domain/entities/daily_attendance_entity.dart';
import 'package:flutter/material.dart';

class AttendanceCard extends StatelessWidget {
  final EmployeeAttendance attendance;

  const AttendanceCard({super.key, required this.attendance});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(DoubleSizes.size16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Employee info header
            Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: context.appColorScheme.primary.withValues(
                    alpha: 0.1,
                  ),
                  child: Text(
                    _getInitials(
                      '${attendance.firstName} ${attendance.lastName}',
                    ),
                    style: TextStyle(
                      color: context.appColorScheme.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(width: DoubleSizes.size12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${attendance.firstName} ${attendance.lastName}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${attendance.position} - ${attendance.department}',
                        style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
                _buildStatusChip(context),
              ],
            ),
            const SizedBox(height: DoubleSizes.size16),

            // Attendance records
            if (attendance.attendances != null &&
                attendance.attendances!.isNotEmpty) ...[
              const Text(
                'Registros de Asistencia',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: DoubleSizes.size8),
              ...attendance.attendances!.map(
                (record) => _buildAttendanceRecord(context, record),
              ),
            ] else ...[
              Container(
                padding: const EdgeInsets.all(DoubleSizes.size12),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.info_outline, color: Colors.grey),
                    SizedBox(width: DoubleSizes.size8),
                    Text(
                      'Sin registros de asistencia',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],

            // Status section
            const SizedBox(height: DoubleSizes.size16),
            _buildStatusSection(context),
          ],
        ),
      ),
    );
  }

  String _getInitials(String name) {
    final parts = name.trim().split(' ');
    if (parts.length >= 2) {
      return '${parts[0][0]}${parts[1][0]}'.toUpperCase();
    } else if (parts.isNotEmpty) {
      return parts[0][0].toUpperCase();
    }
    return 'U';
  }

  Widget _buildStatusChip(BuildContext context) {
    final status = attendance.attendanceStatus;
    Color color;

    switch (status.toLowerCase()) {
      case 'present':
        color = Colors.green;
        break;
      case 'absent':
        color = Colors.red;
        break;
      case 'late':
        color = Colors.orange;
        break;
      default:
        color = Colors.grey;
    }

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: DoubleSizes.size12,
        vertical: DoubleSizes.size4,
      ),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: color.withValues(alpha: 0.3)),
      ),
      child: Text(
        attendance.statusLabel,
        style: TextStyle(
          color: color,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _buildAttendanceRecord(BuildContext context, AttendanceRecord record) {
    final hasCheckIn = record.checkInTime != null;
    final hasCheckOut = record.checkOutTime != null;

    return Padding(
      padding: const EdgeInsets.only(bottom: DoubleSizes.size8),
      child: Container(
        padding: const EdgeInsets.all(DoubleSizes.size12),
        decoration: BoxDecoration(
          color: Colors.grey[50],
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey[200]!),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Estado del registro
            Row(
              children: [
                Icon(
                  record.status == 'PRESENT' ? Icons.check_circle : Icons.info,
                  size: 20,
                  color: record.status == 'PRESENT'
                      ? Colors.green
                      : Colors.orange,
                ),
                const SizedBox(width: DoubleSizes.size8),
                Text(
                  'Estado: ${StatusTextUtil.getStatusText(record.status)}',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),

            if (hasCheckIn || hasCheckOut) ...[
              const SizedBox(height: DoubleSizes.size8),

              // Entrada
              if (hasCheckIn) TimeLabel(dateTime: record.checkInTime!),

              // Salida
              if (hasCheckOut) ...[
                const SizedBox(height: DoubleSizes.size4),
                TimeLabel(dateTime: record.checkOutTime!),
              ],

              // Duración
              if (record.durationMins != null) ...[
                const SizedBox(height: DoubleSizes.size4),
                Row(
                  children: [
                    const Icon(Icons.timer, size: 16, color: Colors.blue),
                    const SizedBox(width: DoubleSizes.size8),
                    Text(
                      'Duración: ${DateTimeUtils.formatDuration(record.durationMins!)}',
                      style: const TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ],
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildStatusSection(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(DoubleSizes.size12),
      decoration: BoxDecoration(
        color: context.appColorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(Icons.info_outline, size: 16, color: Colors.grey[600]),
          const SizedBox(width: DoubleSizes.size8),
          Text(
            'Estado: ${attendance.statusLabel}',
            style: TextStyle(fontSize: 14, color: Colors.grey[700]),
          ),
        ],
      ),
    );
  }
}

class TimeLabel extends StatelessWidget {
  const TimeLabel({super.key, required this.dateTime});

  final IconData icon = Icons.logout;
  final DateTime dateTime;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 16, color: Colors.orange),
        const SizedBox(width: DoubleSizes.size8),
        Text(
          'Salida: ${DateTimeUtils.formatTimeLocal(dateTime)}',
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
