import 'package:attendance_app/src/core/shared/widgets/attendance_card.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/attendance_history_response.dart';
import 'package:flutter/material.dart';

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

  void _showAttendanceDetails(
    BuildContext context,
    AttendanceHistoryItem attendance,
  ) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.6,
        maxChildSize: 0.9,
        minChildSize: 0.3,
        builder: (context, scrollController) => Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Handle bar
              Center(
                child: Container(
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Title
              Text(
                'Detalles de Asistencia',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),

              Expanded(
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Información básica con el card
                      AttendanceCard(
                        date: attendance.date,
                        checkInTime: attendance.checkInTime ?? DateTime.now(),
                        checkOutTime: attendance.checkOutTime,
                        status: attendance.status,
                        durationMins: attendance.durationMins,
                      ),

                      const SizedBox(height: 24),

                      // Información adicional si está disponible
                      if (attendance.checkInLocation != null ||
                          attendance.checkOutLocation != null ||
                          attendance.device != null) ...[
                        Text(
                          'Información Adicional',
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 12),

                        if (attendance.checkInLocation != null)
                          _DetailRow(
                            icon: Icons.location_on,
                            label: 'Ubicación Entrada',
                            value: attendance.checkInLocation!.name,
                          ),

                        if (attendance.checkOutLocation != null)
                          _DetailRow(
                            icon: Icons.location_on,
                            label: 'Ubicación Salida',
                            value: attendance.checkOutLocation!.name,
                          ),

                        if (attendance.device != null)
                          _DetailRow(
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
            ],
          ),
        ),
      ),
    );
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
              return AttendanceCard(
                date: attendance.date,
                checkInTime: attendance.checkInTime ?? DateTime.now(),
                checkOutTime: attendance.checkOutTime,
                status: attendance.status,
                durationMins: attendance.durationMins,
                onTap: () {
                  // Aquí podrías agregar lógica para mostrar más detalles
                  _showAttendanceDetails(context, attendance);
                },
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

class _DetailRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _DetailRow({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, size: 20, color: Colors.grey[600]),
          const SizedBox(width: 12),
          Text(
            '$label:',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
              color: Colors.grey[700],
            ),
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
