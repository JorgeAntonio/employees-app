import 'package:attendance_app/src/core/shared/layout/layout.dart';
import 'package:attendance_app/src/core/shared/widgets/attendance_app_bar.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/attendance_history_request.dart';
import 'package:attendance_app/src/features/attendance/presentation/providers/attendance_history_provider.dart';
import 'package:attendance_app/src/features/history/widgets/attendance_history_filters.dart';
import 'package:attendance_app/src/features/history/widgets/attendance_history_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AttendanceHistoryScreen extends ConsumerStatefulWidget {
  const AttendanceHistoryScreen({super.key});

  @override
  ConsumerState<AttendanceHistoryScreen> createState() =>
      _AttendanceHistoryScreenState();
}

class _AttendanceHistoryScreenState
    extends ConsumerState<AttendanceHistoryScreen> {
  DateTime? _startDate;
  DateTime? _endDate;
  int _currentPage = 1;
  final int _limit = 10;
  bool _isLoadingMore = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadAttendanceHistory();
    });
  }

  void _loadAttendanceHistory() {
    final request = AttendanceHistoryRequest(
      page: _currentPage,
      limit: _limit,
      startDate: _startDate,
      endDate: _endDate,
    );

    ref
        .read(attendanceHistoryNotifierProvider.notifier)
        .getAttendanceHistory(request);
  }

  void _onFiltersChanged(DateTime? startDate, DateTime? endDate) {
    setState(() {
      _startDate = startDate;
      _endDate = endDate;
      _currentPage = 1; // Reset to first page when filters change
      _isLoadingMore = false;
    });

    // Clear existing data when filters change
    ref.read(attendanceHistoryNotifierProvider.notifier).clearHistory();
    _loadAttendanceHistory();
  }

  void _onPageChanged(int page) {
    if (page > _currentPage) {
      // Loading more data (infinite scroll)
      setState(() {
        _currentPage = page;
        _isLoadingMore = true;
      });

      final request = AttendanceHistoryRequest(
        page: _currentPage,
        limit: _limit,
        startDate: _startDate,
        endDate: _endDate,
      );

      ref
          .read(attendanceHistoryNotifierProvider.notifier)
          .loadMoreAttendanceHistory(request)
          .then((_) {
            if (mounted) {
              setState(() {
                _isLoadingMore = false;
              });
            }
          });
    } else {
      // Regular page change (shouldn't happen with infinite scroll)
      setState(() {
        _currentPage = page;
      });
      _loadAttendanceHistory();
    }
  }

  Future<void> _onRefresh() async {
    // Reset to first page and reload data
    setState(() {
      _currentPage = 1;
      _isLoadingMore = false;
    });

    // Clear existing data and load fresh data
    ref.read(attendanceHistoryNotifierProvider.notifier).clearHistory();
    _loadAttendanceHistory();

    // Add a small delay to ensure the UI shows the refresh indicator
    await Future.delayed(const Duration(milliseconds: 500));
  }

  @override
  Widget build(BuildContext context) {
    final attendanceHistoryState = ref.watch(attendanceHistoryNotifierProvider);

    return Scaffold(
      appBar: AttendanceAppBar(
        title: 'Historial',
        actions: [
          AttendanceHistoryFilters(
            startDate: _startDate,
            endDate: _endDate,
            onFiltersChanged: _onFiltersChanged,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 48.0),
        child: Column(
          children: [
            // Content section
            Expanded(
              child: RefreshIndicator(
                onRefresh: _onRefresh,
                child: attendanceHistoryState.when(
                  data: (historyResponse) {
                    if (historyResponse == null) {
                      return const Center(
                        child: Text('No hay datos de historial disponibles'),
                      );
                    }

                    return AttendanceHistoryList(
                      historyResponse: historyResponse,
                      currentPage: _currentPage,
                      onPageChanged: _onPageChanged,
                      isLoading: _isLoadingMore,
                    );
                  },
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (error, stackTrace) => RefreshIndicator(
                    onRefresh: _onRefresh,
                    child: SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.7,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.error_outline,
                                size: 64,
                                color: Colors.red,
                              ),
                              const SizedBox(height: 16),
                              Text(
                                'Error al cargar el historial',
                                style: Theme.of(
                                  context,
                                ).textTheme.headlineSmall,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                error.toString(),
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              const SizedBox(height: 16),
                              ElevatedButton(
                                onPressed: _loadAttendanceHistory,
                                child: const Text('Reintentar'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Gaps.gap48,
          ],
        ),
      ),
    );
  }
}
