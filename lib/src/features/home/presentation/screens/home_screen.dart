import 'package:attendance_app/src/core/shared/extensions/build_context.dart';
import 'package:attendance_app/src/core/shared/layout/double_value.dart';
import 'package:attendance_app/src/core/shared/widgets/attendance_app_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final bool _isCheckedIn = false;
  DateTime? _checkInTime;
  // DateTime? _checkOutTime;

  String getDayName(DateTime now) {
    final days = [
      'Lunes',
      'Martes',
      'Miércoles',
      'Jueves',
      'Viernes',
      'Sábado',
      'Domingo',
    ];
    return days[now.weekday - 1];
  }

  String getMonthName(int month) {
    const months = [
      'Enero',
      'Febrero',
      'Marzo',
      'Abril',
      'Mayo',
      'Junio',
      'Julio',
      'Agosto',
      'Septiembre',
      'Octubre',
      'Noviembre',
      'Diciembre',
    ];
    return months[month - 1];
  }

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final dayName = getDayName(now);
    final monthName = getMonthName(now.month);
    final formattedDate = '$dayName, ${now.day} de $monthName';

    return Scaffold(
      appBar: AttendanceAppBar(
        title: formattedDate,
        actions: [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.calendar_today_rounded,
              color: context.appColorScheme.onSurface,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Main Content
            Padding(
              padding: const EdgeInsets.all(DoubleSizes.size16),
              child: Column(
                spacing: DoubleSizes.size24,
                children: [
                  // Quick Stats
                  const QuickStats(),

                  // Today's Status Banner
                  StatusBanner(
                    isCheckedIn: _isCheckedIn,
                    checkInTime: _checkInTime,
                  ),

                  const SizedBox(height: DoubleSizes.size40),
                  const SizedBox(height: DoubleSizes.size40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
