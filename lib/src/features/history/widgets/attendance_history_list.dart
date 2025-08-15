import 'package:attendance_app/src/core/shared/extensions/build_context.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/attendance_history_response.dart';
import 'package:flutter/material.dart';

import 'attendance_history_item.dart';

class AttendanceHistoryList extends StatelessWidget {
  final AttendanceHistoryResponse historyResponse;
  final int currentPage;
  final Function(int) onPageChanged;

  const AttendanceHistoryList({
    super.key,
    required this.historyResponse,
    required this.currentPage,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    final attendances = historyResponse.data?.attendances ?? [];
    final pagination = historyResponse.data?.pagination;

    if (attendances.isEmpty) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.history, size: 64, color: Colors.grey),
            SizedBox(height: 16),
            Text(
              'No hay registros de asistencia',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(height: 8),
            Text(
              'Los registros aparecerán aquí cuando estén disponibles',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      );
    }

    return Column(
      children: [
        // Header with total count
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              Text(
                'Total: ${pagination?.total ?? 0} registros',
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w500),
              ),
              const Spacer(),
              Text(
                'Página ${pagination?.page ?? 1} de ${pagination?.totalPages ?? 1}',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
        // List of attendance records
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: attendances.length,
            itemBuilder: (context, index) {
              final attendance = attendances[index];
              return AttendanceHistoryItemWidget(
                attendance: attendance,
                isLast: index == attendances.length - 1,
              );
            },
          ),
        ),
        // Pagination controls
        if ((pagination?.totalPages ?? 1) > 1)
          Container(
            padding: const EdgeInsets.all(16),
            child: _PaginationControls(
              currentPage: currentPage,
              totalPages: pagination?.totalPages ?? 1,
              onPageChanged: onPageChanged,
            ),
          ),
      ],
    );
  }
}

class _PaginationControls extends StatelessWidget {
  final int currentPage;
  final int totalPages;
  final Function(int) onPageChanged;

  const _PaginationControls({
    required this.currentPage,
    required this.totalPages,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        // Previous button
        IconButton(
          onPressed: currentPage > 1
              ? () => onPageChanged(currentPage - 1)
              : null,
          icon: const Icon(Icons.chevron_left),
        ),
        // Page numbers
        ..._buildPageNumbers(context),
        // Next button
        IconButton(
          onPressed: currentPage < totalPages
              ? () => onPageChanged(currentPage + 1)
              : null,
          icon: const Icon(Icons.chevron_right),
        ),
      ],
    );
  }

  List<Widget> _buildPageNumbers(BuildContext context) {
    List<Widget> pages = [];

    // Show first page
    if (currentPage > 3) {
      pages.add(_buildPageButton(1, context));
      if (currentPage > 4) {
        pages.add(const Text('...'));
      }
    }

    // Show pages around current page
    int start = (currentPage - 2).clamp(1, totalPages);
    int end = (currentPage + 2).clamp(1, totalPages);

    for (int i = start; i <= end; i++) {
      pages.add(_buildPageButton(i, context));
    }

    // Show last page
    if (currentPage < totalPages - 2) {
      if (currentPage < totalPages - 3) {
        pages.add(const Text('...'));
      }
      pages.add(_buildPageButton(totalPages, context));
    }

    return pages;
  }

  Widget _buildPageButton(int page, BuildContext context) {
    final isCurrentPage = page == currentPage;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: GestureDetector(
        onTap: isCurrentPage ? null : () => onPageChanged(page),
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: isCurrentPage
                ? context.appColorScheme.primary
                : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: isCurrentPage
                  ? context.appColorScheme.primary
                  : Colors.grey[300]!,
            ),
          ),
          child: Center(
            child: Text(
              page.toString(),
              style: TextStyle(
                color: isCurrentPage ? Colors.white : Colors.black87,
                fontWeight: isCurrentPage ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
