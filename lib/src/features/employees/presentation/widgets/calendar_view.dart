import 'package:attendance_app/src/core/shared/extensions/extensions.dart';
import 'package:attendance_app/src/core/shared/layout/layout.dart';
import 'package:attendance_app/src/core/utils/current_date.dart';
import 'package:attendance_app/src/features/employees/presentation/providers/calendar_provider.dart';
import 'package:attendance_app/src/features/employees/presentation/widgets/calendar_day.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CalendarView extends ConsumerWidget {
  const CalendarView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(calendarNotifierProvider);
    final notifier = ref.read(calendarNotifierProvider.notifier);
    final screenHeight = context.screenHeight;
    final mode = state.viewMode;
    final visibleDays = notifier.getVisibleDays();
    final selected = state.selectedDate;

    if (mode == 'mes' || mode == 'quincena') {
      return SizedBox(
        height: mode == 'mes' ? screenHeight * 0.3 : screenHeight * 0.12,
        child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 7,
            childAspectRatio: 1,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount: mode == 'mes' ? 42 : 14,
          itemBuilder: (context, index) {
            if (index < visibleDays.length) {
              return CalendarDay(
                date: visibleDays[index],
                isSelected: isSameDate(visibleDays[index], selected),
                hasActivity: notifier
                    .getClasesForDate(visibleDays[index])
                    .isNotEmpty,
                onTap: () => notifier.selectDate(visibleDays[index]),
              );
            }
            return const SizedBox();
          },
        ),
      );
    } else {
      return SizedBox(
        height: screenHeight * 0.08,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: visibleDays.length,
          separatorBuilder: (_, __) => Spaces.space8,
          itemBuilder: (context, index) {
            return CalendarDay(
              date: visibleDays[index],
              isSelected: isSameDate(visibleDays[index], selected),
              hasActivity: notifier
                  .getClasesForDate(visibleDays[index])
                  .isNotEmpty,
              onTap: () => notifier.selectDate(visibleDays[index]),
              isHorizontal: true,
            );
          },
        ),
      );
    }
  }
}
