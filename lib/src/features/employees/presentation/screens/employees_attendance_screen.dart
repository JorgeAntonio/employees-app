import 'package:attendance_app/src/core/shared/widgets/attendance_app_bar.dart';
import 'package:flutter/material.dart';

class EmployeesAttendanceScreen extends StatelessWidget {
  const EmployeesAttendanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AttendanceAppBar(title: 'Asistencia de Empleados'),
      body: const Center(child: Text('Asistencia de Empleados')),
    );
  }
}
