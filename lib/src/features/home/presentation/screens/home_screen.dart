import 'package:attendance_app/src/core/shared/layout/double_value.dart';
import 'package:attendance_app/src/core/shared/widgets/attendance_app_bar.dart';
import 'package:attendance_app/src/core/utils/current_date.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/widgets.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  // final bool _isCheckedIn = false;
  // DateTime? _checkInTime;
  // DateTime? _checkOutTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AttendanceAppBar(
        title: formattedDate,
        centerTitle: false,
        leading: false,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
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
                  // StatusBanner(
                  //   isCheckedIn: _isCheckedIn,
                  //   checkInTime: _checkInTime,
                  // ),

                  // Recent Attendance List
                  const RecentAttendanceList(),

                  const SizedBox(height: DoubleSizes.size64),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
