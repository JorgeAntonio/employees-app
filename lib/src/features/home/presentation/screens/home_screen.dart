import 'package:attendance_app/src/core/shared/layout/double_value.dart';
import 'package:attendance_app/src/core/shared/widgets/attendance_app_bar.dart';
import 'package:attendance_app/src/core/utils/current_date.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AttendanceAppBar(
        title: formattedDate,
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
