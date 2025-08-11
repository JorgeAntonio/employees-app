import 'package:attendance_app/src/core/shared/extensions/extensions.dart';
import 'package:attendance_app/src/core/shared/layout/layout.dart';
import 'package:attendance_app/src/features/attendance/presentation/providers/attendance_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AttendanceHistoryWidget extends ConsumerStatefulWidget {
  const AttendanceHistoryWidget({super.key});

  @override
  ConsumerState<AttendanceHistoryWidget> createState() =>
      _AttendanceHistoryWidgetState();
}

class _AttendanceHistoryWidgetState
    extends ConsumerState<AttendanceHistoryWidget> {
  int _currentPage = 1;
  final int _limit = 10;

  @override
  void initState() {
    super.initState();
    // Cargar el historial al inicializar
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadHistory();
    });
  }

  void _loadHistory() {
    ref
        .read(attendanceHistoryNotifierProvider.notifier)
        .loadHistory(page: _currentPage, limit: _limit);
  }

  @override
  Widget build(BuildContext context) {
    final historyState = ref.watch(attendanceHistoryNotifierProvider);

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
              Icon(Icons.history, color: context.appColorScheme.primary),
              SizedBox(width: DoubleSizes.size8),
              Text(
                'Historial de Asistencia',
                style: context.appTextTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: _loadHistory,
                icon: const Icon(Icons.refresh),
                iconSize: 20,
              ),
            ],
          ),

          SizedBox(height: DoubleSizes.size16),

          historyState.when(
            data: (either) {
              return either.fold(
                (exception) {
                  return _buildErrorState(exception.toString());
                },
                (history) {
                  return _buildHistoryContent(history);
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

  Widget _buildHistoryContent(dynamic history) {
    if (history.records.isEmpty) {
      return _buildEmptyState();
    }

    return Column(
      children: [
        // Información de paginación
        Row(
          children: [
            Text(
              'Mostrando ${history.records.length} de ${history.total} registros',
              style: context.appTextTheme.bodySmall?.copyWith(
                color: context.appColorScheme.onSurfaceVariant,
              ),
            ),
            const Spacer(),
            Text(
              'Página ${history.page}',
              style: context.appTextTheme.bodySmall?.copyWith(
                color: context.appColorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),

        SizedBox(height: DoubleSizes.size12),

        // Lista de registros
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: history.records.length,
          separatorBuilder: (context, index) =>
              SizedBox(height: DoubleSizes.size8),
          itemBuilder: (context, index) {
            final record = history.records[index];
            return _buildHistoryItem(record);
          },
        ),

        SizedBox(height: DoubleSizes.size16),

        // Controles de paginación
        _buildPaginationControls(history),
      ],
    );
  }

  Widget _buildHistoryItem(dynamic record) {
    return Container(
      padding: EdgeInsets.all(DoubleSizes.size12),
      decoration: BoxDecoration(
        color: context.appColorScheme.surface,
        borderRadius: BorderRadius.circular(DoubleSizes.size8),
        border: Border.all(
          color: context.appColorScheme.outline.withValues(alpha: 0.2),
        ),
      ),
      child: Row(
        children: [
          // Icono según el tipo
          Container(
            padding: EdgeInsets.all(DoubleSizes.size8),
            decoration: BoxDecoration(
              color: record.type == 'CHECK_IN'
                  ? context.appColorScheme.primaryContainer
                  : context.appColorScheme.secondaryContainer,
              borderRadius: BorderRadius.circular(DoubleSizes.size8),
            ),
            child: Icon(
              record.type == 'CHECK_IN' ? Icons.login : Icons.logout,
              size: 16,
              color: record.type == 'CHECK_IN'
                  ? context.appColorScheme.onPrimaryContainer
                  : context.appColorScheme.onSecondaryContainer,
            ),
          ),

          SizedBox(width: DoubleSizes.size12),

          // Información del registro
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  record.type == 'CHECK_IN' ? 'Entrada' : 'Salida',
                  style: context.appTextTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: DoubleSizes.size4),
                Text(
                  _formatDateTime(record.timestamp),
                  style: context.appTextTheme.bodySmall?.copyWith(
                    color: context.appColorScheme.onSurfaceVariant,
                  ),
                ),
                if (record.location.isNotEmpty) ...[
                  SizedBox(height: DoubleSizes.size2),
                  Text(
                    record.location,
                    style: context.appTextTheme.bodySmall?.copyWith(
                      color: context.appColorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPaginationControls(dynamic history) {
    final totalPages = (history.total / _limit).ceil();
    final hasNextPage = history.page < totalPages;
    final hasPrevPage = history.page > 1;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: hasPrevPage
              ? () {
                  setState(() {
                    _currentPage = history.page - 1;
                  });
                  _loadHistory();
                }
              : null,
          icon: const Icon(Icons.chevron_left),
        ),

        Container(
          padding: EdgeInsets.symmetric(
            horizontal: DoubleSizes.size12,
            vertical: DoubleSizes.size8,
          ),
          decoration: BoxDecoration(
            color: context.appColorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(DoubleSizes.size8),
          ),
          child: Text(
            '${history.page} / $totalPages',
            style: context.appTextTheme.bodySmall?.copyWith(
              color: context.appColorScheme.onPrimaryContainer,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),

        IconButton(
          onPressed: hasNextPage
              ? () {
                  setState(() {
                    _currentPage = history.page + 1;
                  });
                  _loadHistory();
                }
              : null,
          icon: const Icon(Icons.chevron_right),
        ),
      ],
    );
  }

  Widget _buildEmptyState() {
    return Container(
      padding: EdgeInsets.all(DoubleSizes.size32),
      child: Column(
        children: [
          Icon(
            Icons.history,
            size: 48,
            color: context.appColorScheme.onSurfaceVariant,
          ),
          SizedBox(height: DoubleSizes.size16),
          Text(
            'No hay registros de asistencia',
            style: context.appTextTheme.bodyMedium?.copyWith(
              color: context.appColorScheme.onSurfaceVariant,
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
              'Error al cargar historial: $error',
              style: context.appTextTheme.bodySmall?.copyWith(
                color: context.appColorScheme.error,
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _formatDateTime(DateTime dateTime) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final recordDate = DateTime(dateTime.year, dateTime.month, dateTime.day);

    String dateText;
    if (recordDate == today) {
      dateText = 'Hoy';
    } else if (recordDate == today.subtract(const Duration(days: 1))) {
      dateText = 'Ayer';
    } else {
      dateText = '${dateTime.day}/${dateTime.month}/${dateTime.year}';
    }

    return '$dateText ${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}';
  }
}
