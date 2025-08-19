import 'package:attendance_app/src/core/shared/extensions/build_context.dart';
import 'package:attendance_app/src/core/shared/widgets/section_title.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/attendance_history_response.dart';
import 'package:flutter/material.dart';

import 'attendance_history_item.dart';

class AttendanceHistoryList extends StatefulWidget {
  final AttendanceHistoryResponse historyResponse;
  final int currentPage;
  final Function(int) onPageChanged;
  final bool isLoading;

  const AttendanceHistoryList({
    super.key,
    required this.historyResponse,
    required this.currentPage,
    required this.onPageChanged,
    this.isLoading = false,
  });

  @override
  State<AttendanceHistoryList> createState() => _AttendanceHistoryListState();
}

class _AttendanceHistoryListState extends State<AttendanceHistoryList> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      // Load more data when user is 200 pixels from the bottom
      final pagination = widget.historyResponse.data?.pagination;
      if (pagination != null &&
          widget.currentPage < pagination.totalPages &&
          !widget.isLoading) {
        widget.onPageChanged(widget.currentPage + 1);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final attendances = widget.historyResponse.data?.attendances ?? [];
    final pagination = widget.historyResponse.data?.pagination;

    if (attendances.isEmpty) {
      return SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          child: const Center(
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
                SizedBox(height: 16),
                Text(
                  'Desliza hacia abajo para actualizar',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      );
    }

    final hasMorePages =
        pagination != null && widget.currentPage < pagination.totalPages;

    return Column(
      children: [
        // Header with total count
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              SectionTitle(title: 'Total: ${pagination?.total ?? 0} registros'),
              Spacer(),
              Row(
                children: [
                  Icon(
                    Icons.refresh,
                    color: context.appColorScheme.onSurfaceVariant,
                  ),
                  SizedBox(width: 4),
                  SectionTitle(title: 'Pull para actualizar'),
                ],
              ),
            ],
          ),
        ),
        // List of attendance records with infinite scroll
        Expanded(
          child: ListView.builder(
            controller: _scrollController,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: attendances.length + (hasMorePages ? 1 : 0),
            itemBuilder: (context, index) {
              if (index == attendances.length) {
                // Loading indicator at the bottom
                return Container(
                  padding: const EdgeInsets.all(16),
                  child: Center(
                    child: widget.isLoading
                        ? const CircularProgressIndicator()
                        : const SizedBox.shrink(),
                  ),
                );
              }

              final attendance = attendances[index];
              return AttendanceHistoryItemWidget(
                attendance: attendance,
                isLast: index == attendances.length - 1 && !hasMorePages,
              );
            },
          ),
        ),
      ],
    );
  }
}
