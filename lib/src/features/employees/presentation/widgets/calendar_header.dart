import 'package:attendance_app/src/core/shared/extensions/build_context.dart';
import 'package:attendance_app/src/core/shared/layout/double_value.dart';
import 'package:attendance_app/src/core/utils/current_date.dart';
import 'package:attendance_app/src/features/employees/presentation/providers/calendar_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CalendarHeader extends ConsumerWidget {
  const CalendarHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(calendarNotifierProvider);
    final notifier = ref.read(calendarNotifierProvider.notifier);
    final focused = state.focusedMonth;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              '${getMonthName(focused.month)} ${focused.year}',
              style: context.appTextTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            IconButton(
              icon: const Icon(Icons.chevron_left),
              onPressed: notifier.previousMonth,
            ),
            IconButton(
              icon: const Icon(Icons.chevron_right),
              onPressed: notifier.nextMonth,
            ),
          ],
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: notifier.goToToday,
              style: ElevatedButton.styleFrom(
                backgroundColor: context.appColorScheme.surfaceContainer,
                foregroundColor: context.appColorScheme.onSurface,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(DoubleSizes.size24),
                ),
                elevation: DoubleSizes.size0,
                padding: const EdgeInsets.symmetric(
                  horizontal: DoubleSizes.size16,
                  vertical: DoubleSizes.size8,
                ),
                textStyle: context.appTextTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: const Text('Hoy'),
            ),
          ],
        ),
      ],
    );
  }
}
