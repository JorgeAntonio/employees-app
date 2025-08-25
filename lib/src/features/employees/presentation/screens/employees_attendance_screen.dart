import 'package:attendance_app/src/core/shared/layout/double_value.dart';
import 'package:attendance_app/src/core/shared/widgets/attendance_app_bar.dart';
import 'package:attendance_app/src/features/employees/presentation/widgets/calendar_header.dart';
import 'package:attendance_app/src/features/employees/presentation/widgets/calendar_view.dart';
import 'package:attendance_app/src/features/employees/presentation/widgets/calendar_view_options.dart';
import 'package:flutter/material.dart';

class EmployeesAttendanceScreen extends StatelessWidget {
  const EmployeesAttendanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AttendanceAppBar(
        title: 'Calendario',
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () => CalendarViewOptions.show(context),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(DoubleSizes.size16),
        child: Column(
          spacing: DoubleSizes.size16,
          children: [const CalendarHeader(), const CalendarView()],
        ),
      ),
    );
  }
}
