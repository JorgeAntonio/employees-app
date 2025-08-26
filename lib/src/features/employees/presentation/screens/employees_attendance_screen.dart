import 'package:attendance_app/src/core/shared/widgets/attendance_app_bar.dart';
import 'package:attendance_app/src/features/employees/presentation/providers/calendar_provider.dart';
import 'package:attendance_app/src/features/employees/presentation/widgets/calendar_header.dart';
import 'package:attendance_app/src/features/employees/presentation/widgets/calendar_view.dart';
import 'package:attendance_app/src/features/employees/presentation/widgets/daily_attendance_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EmployeesAttendanceScreen extends ConsumerWidget {
  const EmployeesAttendanceScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final calendarState = ref.watch(calendarNotifierProvider);
    final selectedDate = calendarState.selectedDate;

    return Scaffold(
      appBar: const AttendanceAppBar(title: 'Asistencia diaria'),
      body: Column(
        children: [
          // Calendar section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: const CalendarHeader(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: const CalendarView(),
          ),

          // Divider
          const Divider(height: 1),
          // Attendance list section
          Expanded(child: DailyAttendanceList(selectedDate: selectedDate)),
        ],
      ),
    );
  }
}
