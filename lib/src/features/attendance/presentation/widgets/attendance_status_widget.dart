import 'package:attendance_app/src/core/shared/extensions/extensions.dart';
import 'package:attendance_app/src/core/shared/layout/layout.dart';
import 'package:attendance_app/src/features/attendance/presentation/providers/attendance_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AttendanceStatusWidget extends ConsumerStatefulWidget {
  const AttendanceStatusWidget({super.key});

  @override
  ConsumerState<AttendanceStatusWidget> createState() =>
      _AttendanceStatusWidgetState();
}

class _AttendanceStatusWidgetState
    extends ConsumerState<AttendanceStatusWidget> {
  @override
  void initState() {
    super.initState();
    // Cargar el estado de asistencia al inicializar
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(attendanceStatusNotifierProvider.notifier).loadStatus();
    });
  }

  @override
  Widget build(BuildContext context) {
    final statusState = ref.watch(attendanceStatusNotifierProvider);

    return Container(
      padding: EdgeInsets.all(DoubleSizes.size16),
      decoration: BoxDecoration(
        color: context.appColorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(DoubleSizes.size12),
        border: Border.all(
          color: context.appColorScheme.outline.withValues(alpha: 0.3),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.access_time, color: context.appColorScheme.primary),
              SizedBox(width: DoubleSizes.size8),
              Text(
                'Estado de Asistencia',
                style: context.appTextTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {
                  ref
                      .read(attendanceStatusNotifierProvider.notifier)
                      .loadStatus();
                },
                icon: const Icon(Icons.refresh),
                iconSize: 20,
              ),
            ],
          ),

          SizedBox(height: DoubleSizes.size16),

          statusState.when(
            data: (either) {
              return either.fold(
                (exception) {
                  return _buildErrorState(exception.toString());
                },
                (status) {
                  return _buildStatusContent(status);
                },
              );
            },
            loading: () {
              return _buildLoadingState();
            },
            error: (error, stack) {
              return _buildErrorState(error.toString());
            },
          ),
        ],
      ),
    );
  }

  Widget _buildStatusContent(dynamic status) {
    return Column(
      children: [
        // Estado actual
        Row(
          children: [
            Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                color: status.isCheckedIn ? Colors.green : Colors.red,
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(width: DoubleSizes.size8),
            Text(
              status.isCheckedIn ? 'Presente' : 'Ausente',
              style: context.appTextTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: status.isCheckedIn ? Colors.green : Colors.red,
              ),
            ),
          ],
        ),

        SizedBox(height: DoubleSizes.size12),

        // Información detallada
        if (status.lastCheckIn != null) ...[
          _buildInfoRow(
            'Última entrada:',
            _formatDateTime(status.lastCheckIn),
            Icons.login,
          ),
        ],

        if (status.lastCheckOut != null) ...[
          _buildInfoRow(
            'Última salida:',
            _formatDateTime(status.lastCheckOut),
            Icons.logout,
          ),
        ],

        if (status.todayDuration > 0) ...[
          _buildInfoRow(
            'Tiempo trabajado hoy:',
            '${status.todayDuration} minutos',
            Icons.timer,
          ),
        ],

        _buildInfoRow(
          'Estado:',
          _getStatusText(status.currentStatus),
          Icons.info,
        ),
      ],
    );
  }

  Widget _buildInfoRow(String label, String value, IconData icon) {
    return Padding(
      padding: EdgeInsets.only(bottom: DoubleSizes.size8),
      child: Row(
        children: [
          Icon(icon, size: 16, color: context.appColorScheme.onSurfaceVariant),
          SizedBox(width: DoubleSizes.size8),
          Expanded(
            child: Text(
              label,
              style: context.appTextTheme.bodySmall?.copyWith(
                color: context.appColorScheme.onSurfaceVariant,
              ),
            ),
          ),
          Text(
            value,
            style: context.appTextTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoadingState() {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(DoubleSizes.size16),
        child: CircularProgressIndicator(color: context.appColorScheme.primary),
      ),
    );
  }

  Widget _buildErrorState(String error) {
    return Container(
      padding: EdgeInsets.all(DoubleSizes.size16),
      decoration: BoxDecoration(
        color: context.appColorScheme.errorContainer,
        borderRadius: BorderRadius.circular(DoubleSizes.size8),
      ),
      child: Row(
        children: [
          Icon(Icons.error_outline, color: context.appColorScheme.error),
          SizedBox(width: DoubleSizes.size8),
          Expanded(
            child: Text(
              'Error al cargar estado: $error',
              style: context.appTextTheme.bodySmall?.copyWith(
                color: context.appColorScheme.error,
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _formatDateTime(DateTime? dateTime) {
    if (dateTime == null) return 'N/A';
    return '${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}';
  }

  String _getStatusText(String status) {
    switch (status) {
      case 'PRESENT':
        return 'Presente';
      case 'ABSENT':
        return 'Ausente';
      case 'LATE':
        return 'Tardanza';
      case 'EARLY_DEPARTURE':
        return 'Salida temprana';
      default:
        return status;
    }
  }
}
