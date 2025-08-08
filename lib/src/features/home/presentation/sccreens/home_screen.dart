import 'dart:async';

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
  Timer? _timer;
  Duration _timeRemaining = Duration.zero;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (mounted) {
        setState(() {
          _updateTimeRemaining();
        });
      }
    });
  }

  void _updateTimeRemaining() {
    final now = DateTime.now();
    final isWorkDay = now.weekday >= 1 && now.weekday <= 5;

    if (!isWorkDay) {
      // Fin de semana - calcular hasta el próximo lunes
      final nextMonday = now.add(Duration(days: (8 - now.weekday) % 7));
      final nextWorkDay = DateTime(
        nextMonday.year,
        nextMonday.month,
        nextMonday.day,
        8,
        0,
      );
      _timeRemaining = nextWorkDay.difference(now);
    } else if (!_isCheckedIn) {
      // No ha marcado ingreso - mostrar tiempo hasta las 8:00 AM
      final today8AM = DateTime(now.year, now.month, now.day, 8, 0);
      if (now.isBefore(today8AM)) {
        _timeRemaining = today8AM.difference(now);
      } else {
        _timeRemaining = Duration.zero; // Ya pasó la hora de ingreso
      }
    } else {
      // Ya marcó ingreso - mostrar tiempo hasta las 6:00 PM (salida)
      final today6PM = DateTime(now.year, now.month, now.day, 18, 0);
      if (now.isBefore(today6PM)) {
        _timeRemaining = today6PM.difference(now);
      } else {
        _timeRemaining = Duration.zero; // Ya pasó la hora de salida
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AttendanceAppBar(
        title: '8 de agosto',
        actions: [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.calendar_today_rounded,
              color: context.appColorScheme.onPrimary,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Custom App Bar
            const HomeAppBar(),

            // Main Content
            Padding(
              padding: const EdgeInsets.all(DoubleSizes.size16),
              child: Column(
                spacing: DoubleSizes.size24,
                children: [
                  // Next Check Card
                  NextCheckCard(
                    isCheckedIn: _isCheckedIn,
                    timeRemaining: _timeRemaining,
                  ),

                  // Quick Stats
                  const QuickStats(),

                  // Today's Status Banner
                  StatusBanner(
                    isCheckedIn: _isCheckedIn,
                    checkInTime: _checkInTime,
                  ),

                  // // Main Action Button
                  // MainActionButton(
                  //   isCheckedIn: _isCheckedIn,
                  //   onPressed: _isCheckedIn ? _checkOut : _checkIn,
                  // ),
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

  // void _checkIn() {
  //   setState(() {
  //     _isCheckedIn = true;
  //     _checkInTime = DateTime.now();
  //     _checkOutTime = null;
  //   });

  //   ScaffoldMessenger.of(context).showSnackBar(
  //     SnackBar(
  //       content: const Text('¡Ingreso registrado exitosamente!'),
  //       backgroundColor: Theme.of(context).colorScheme.primary,
  //       behavior: SnackBarBehavior.floating,
  //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  //     ),
  //   );
  // }

  // void _checkOut() {
  //   setState(() {
  //     _isCheckedIn = false;
  //     _checkOutTime = DateTime.now();
  //   });

  //   ScaffoldMessenger.of(context).showSnackBar(
  //     SnackBar(
  //       content: const Text('¡Salida registrada exitosamente!'),
  //       backgroundColor: Theme.of(context).colorScheme.error,
  //       behavior: SnackBarBehavior.floating,
  //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  //     ),
  //   );
  // }
}
