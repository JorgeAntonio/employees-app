import 'package:attendance_app/src/core/shared/extensions/build_context.dart';
import 'package:attendance_app/src/core/shared/layout/double_value.dart';
import 'package:flutter/material.dart';

String getDayName(DateTime now) {
  final days = [
    'Domingo',
    'Lunes',
    'Martes',
    'Miércoles',
    'Jueves',
    'Viernes',
    'Sábado',
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

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.appColorScheme;
    final textTheme = context.appTextTheme;

    // final now = DateTime.now();
    // final timeString =
    //     '${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}';
    // final dateString = '${now.day} de ${getMonthName(now.month)}';

    return Container(
      height: DoubleSizes.size100,
      width: double.infinity,
      color: colorScheme.primary,
      padding: const EdgeInsets.symmetric(
        horizontal: DoubleSizes.size16,
        vertical: DoubleSizes.size16,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: DoubleSizes.size16,
        children: [
          Expanded(
            child: Column(
              spacing: DoubleSizes.size4,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  spacing: DoubleSizes.size4,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      spacing: DoubleSizes.size4,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          getGreeting(),
                          style: textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w400,
                            color: colorScheme.onPrimary,
                          ),
                        ),
                        Text(
                          'Juan Pérez',
                          style: textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w400,
                            color: colorScheme.onPrimary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                // Row(
                //   spacing: DoubleSizes.size4,
                //   crossAxisAlignment: CrossAxisAlignment.center,
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Row(
                //       spacing: DoubleSizes.size4,
                //       children: [
                //         Icon(
                //           Icons.calendar_today_rounded,
                //           size: DoubleSizes.size16,
                //           color: colorScheme.onPrimary,
                //         ),
                //         Text(
                //           dateString,
                //           style: textTheme.bodyMedium?.copyWith(
                //             color: colorScheme.onPrimary,
                //           ),
                //         ),
                //       ],
                //     ),
                //     Row(
                //       spacing: DoubleSizes.size4,
                //       children: [
                //         Icon(
                //           Icons.access_time_rounded,
                //           size: DoubleSizes.size16,
                //           color: colorScheme.onPrimary,
                //         ),
                //         Text(
                //           timeString,
                //           style: textTheme.bodyMedium?.copyWith(
                //             color: colorScheme.onPrimary,
                //           ),
                //         ),
                //       ],
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String getGreeting() {
    final hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Buenos días, ';
    } else if (hour < 18) {
      return 'Buenas tardes, ';
    } else {
      return 'Buenas noches, ';
    }
  }
}
