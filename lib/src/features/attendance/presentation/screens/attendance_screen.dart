import 'package:attendance_app/src/core/shared/extensions/extensions.dart';
import 'package:attendance_app/src/core/shared/layout/layout.dart';
import 'package:attendance_app/src/features/attendance/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AttendanceScreen extends ConsumerWidget {
  const AttendanceScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: context.appColorScheme.surface,
      appBar: AppBar(
        title: const Text('Módulo de Asistencia'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(DoubleSizes.size16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Estado de asistencia
                const AttendanceStatusWidget(),
                
                SizedBox(height: DoubleSizes.size16),
                
                // Generador de QR
                const QRGeneratorWidget(),
                
                SizedBox(height: DoubleSizes.size16),
                
                // Historial de asistencia
                const AttendanceHistoryWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
