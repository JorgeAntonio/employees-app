import 'package:attendance_app/src/core/shared/layout/layout.dart';
import 'package:attendance_app/src/features/employees/presentation/providers/employees_providers.dart';
import 'package:attendance_app/src/features/employees/presentation/widgets/attendance_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DailyAttendanceList extends ConsumerWidget {
  final DateTime selectedDate;

  const DailyAttendanceList({super.key, required this.selectedDate});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Update the request with the selected date
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(dailyAttendanceRequestNotifierProvider.notifier)
          .updateDate(selectedDate);
    });

    final attendanceAsync = ref.watch(dailyAttendanceProvider);
    final attendanceNotifier = ref.read(
      dailyAttendanceNotifierProvider.notifier,
    );

    return attendanceAsync.when(
      data: (attendanceList) {
        if (attendanceList.data!.employees.isEmpty) {
          return const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.event_busy, size: 64, color: Colors.grey),
                SizedBox(height: 16),
                Text(
                  'No hay registros de asistencia para esta fecha',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        }

        return RefreshIndicator(
          onRefresh: () async {
            attendanceNotifier.clearAttendance();
            ref.invalidate(dailyAttendanceProvider);
          },
          child: ListView.separated(
            padding: const EdgeInsets.all(DoubleSizes.size16),
            itemCount: attendanceList.data!.employees.length,
            separatorBuilder: (context, index) =>
                const SizedBox(height: DoubleSizes.size12),
            itemBuilder: (context, index) {
              final attendance = attendanceList.data!.employees[index];
              return AttendanceCard(attendance: attendance);
            },
          ),
        );
      },
      loading: () => const Center(child: LoadingWidget()),
      error: (error, stackTrace) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 64, color: Colors.red),
            const SizedBox(height: 16),
            Text(
              'Error al cargar la asistencia: $error',
              style: const TextStyle(fontSize: 16, color: Colors.red),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                attendanceNotifier.clearAttendance();
                ref.invalidate(dailyAttendanceProvider);
              },
              child: const Text('Reintentar'),
            ),
          ],
        ),
      ),
    );
  }
}

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
