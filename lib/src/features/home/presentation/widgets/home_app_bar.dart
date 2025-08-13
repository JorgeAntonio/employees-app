import 'package:attendance_app/src/core/shared/extensions/build_context.dart';
import 'package:attendance_app/src/core/shared/layout/double_value.dart';
import 'package:attendance_app/src/features/auth/presentation/providers/auth_state_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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

class HomeAppBar extends ConsumerWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(authStateProvider);
    final colorScheme = context.appColorScheme;
    final textTheme = context.appTextTheme;

    return session.when(
      loading: () => const SizedBox.shrink(),
      error: (error, stack) => const SizedBox.shrink(),
      data: (authSession) {
        if (authSession == null) {
          return const SizedBox.shrink();
        }

        final user = authSession.data.user;

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
                              '${user.employee.firstName} ${user.employee.lastName}',
                              style: textTheme.titleLarge?.copyWith(
                                fontWeight: FontWeight.w400,
                                color: colorScheme.onPrimary,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
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
