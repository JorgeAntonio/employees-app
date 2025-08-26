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

    return CustomScrollView(
      controller: _scrollController,
      physics: const AlwaysScrollableScrollPhysics(),
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
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
            }, childCount: attendances.length + (hasMorePages ? 1 : 0)),
          ),
        ),
        // Add a flexible space to ensure the scroll view is always scrollable
        SliverFillRemaining(
          hasScrollBody: false,
          child: Container(height: MediaQuery.of(context).size.height * 0.1),
        ),
      ],
    );
  }
}
