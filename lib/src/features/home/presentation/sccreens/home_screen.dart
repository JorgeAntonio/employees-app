import 'dart:async';

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
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorScheme.primary,
        elevation: 0,
        title: const Text(''),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
            color: colorScheme.onPrimary,
          ),
        ],
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // Custom App Bar
            SliverToBoxAdapter(child: const HomeAppBar()),

            // Main Content
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    // Date and Time Card
                    const DateTimeCard(),

                    const SizedBox(height: 24),

                    // Today's Status Banner
                    StatusBanner(
                      isCheckedIn: _isCheckedIn,
                      checkInTime: _checkInTime,
                    ),

                    const SizedBox(height: 24),

                    // Quick Stats
                    const QuickStats(),

                    const SizedBox(height: 24),

                    // Next Check Card
                    NextCheckCard(
                      isCheckedIn: _isCheckedIn,
                      timeRemaining: _timeRemaining,
                    ),

                    // const SizedBox(height: 24),

                    // // Main Action Button
                    // MainActionButton(
                    //   isCheckedIn: _isCheckedIn,
                    //   onPressed: _isCheckedIn ? _checkOut : _checkIn,
                    // ),
                    const SizedBox(height: 40),
                  ],
                ),
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
