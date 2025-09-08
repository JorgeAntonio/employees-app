import 'package:attendance_app/src/core/shared/layout/double_value.dart';
import 'package:attendance_app/src/core/shared/widgets/attendance_app_bar.dart';
import 'package:attendance_app/src/core/utils/current_date.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/home_providers.dart';
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

  Future<void> _onRefresh() async {
    // Invalidate the providers to force a refresh
    ref.invalidate(userStatsProvider);

    // Wait for the new data to load
    await ref.read(userStatsProvider.future);

    // Add a small delay to ensure the UI shows the refresh indicator
    await Future.delayed(const Duration(milliseconds: 500));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AttendanceAppBar(
        title: formattedDate,
        centerTitle: false,
        leading: false,
      ),
      body: RefreshIndicator(
        onRefresh: _onRefresh,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
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
      ),
    );
  }
}
