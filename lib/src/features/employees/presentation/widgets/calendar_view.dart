import 'package:attendance_app/src/core/shared/extensions/extensions.dart';
import 'package:attendance_app/src/core/shared/layout/layout.dart';
import 'package:attendance_app/src/core/utils/current_date.dart';
import 'package:attendance_app/src/features/employees/presentation/providers/calendar_provider.dart';
import 'package:attendance_app/src/features/employees/presentation/widgets/calendar_day.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CalendarView extends ConsumerStatefulWidget {
  const CalendarView({super.key});

  @override
  ConsumerState<CalendarView> createState() => _CalendarViewState();
}

class _CalendarViewState extends ConsumerState<CalendarView> {
  late ScrollController _scrollController;
  bool _hasScrolledToToday = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToToday(List<DateTime> monthDays) {
    if (_hasScrolledToToday) return;

    final today = DateTime.now();
    final state = ref.read(calendarNotifierProvider);

    // Solo hacer scroll si estamos viendo el mes actual
    if (state.focusedMonth.year == today.year &&
        state.focusedMonth.month == today.month) {
      final todayIndex = monthDays.indexWhere(
        (date) => isSameDate(date, today),
      );

      if (todayIndex != -1) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (_scrollController.hasClients) {
            // Calcular la posición aproximada del día actual
            // Considerando el ancho de cada CalendarDay + separadores
            const itemWidth = 60.0; // Ancho aproximado de CalendarDay
            const separatorWidth = 8.0;
            const weekSeparatorWidth = 16.0;

            double scrollPosition = 0.0;
            for (int i = 0; i < todayIndex; i++) {
              scrollPosition += itemWidth;

              // Agregar separador
              final currentDay = monthDays[i];
              final nextDay = i < monthDays.length - 1
                  ? monthDays[i + 1]
                  : null;

              if (nextDay != null &&
                  currentDay.weekday == 7 &&
                  nextDay.weekday == 1) {
                scrollPosition += weekSeparatorWidth;
              } else {
                scrollPosition += separatorWidth;
              }
            }

            // Centrar el día actual en la pantalla
            final screenWidth = MediaQuery.of(context).size.width;
            final centeredPosition =
                scrollPosition - (screenWidth / 2) + (itemWidth / 2);

            _scrollController.animateTo(
              centeredPosition.clamp(
                0.0,
                _scrollController.position.maxScrollExtent,
              ),
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );

            _hasScrolledToToday = true;
          }
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(calendarNotifierProvider);
    final notifier = ref.read(calendarNotifierProvider.notifier);
    final screenHeight = context.screenHeight;
    final selected = state.selectedDate;

    // Obtener todos los días del mes actual
    final monthDays = _getMonthDays(state.focusedMonth);

    // Resetear la bandera si cambiamos de mes
    ref.listen(calendarNotifierProvider, (previous, next) {
      if (previous != null &&
          (previous.focusedMonth.year != next.focusedMonth.year ||
              previous.focusedMonth.month != next.focusedMonth.month)) {
        _hasScrolledToToday = false;
      }
    });

    // Hacer scroll al día actual cuando sea necesario
    _scrollToToday(monthDays);

    return SizedBox(
      height: screenHeight * 0.08,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: DoubleSizes.size16),
        itemCount: monthDays.length,
        separatorBuilder: (context, index) {
          // Agregar un poco más de espacio entre semanas para mejor UX
          final currentDay = monthDays[index];
          final nextDay = index < monthDays.length - 1
              ? monthDays[index + 1]
              : null;

          if (nextDay != null &&
              currentDay.weekday == 7 &&
              nextDay.weekday == 1) {
            return const SizedBox(
              width: DoubleSizes.size16,
            ); // Espacio entre semanas
          }
          return Spaces.space8;
        },
        itemBuilder: (context, index) {
          final date = monthDays[index];
          return CalendarDay(
            date: date,
            isSelected: isSameDate(date, selected),
            hasActivity: notifier.getClasesForDate(date).isNotEmpty,
            onTap: () => notifier.selectDate(date),
            isHorizontal: true,
          );
        },
      ),
    );
  }

  /// Obtiene todos los días del mes especificado
  List<DateTime> _getMonthDays(DateTime month) {
    final lastDay = DateTime(month.year, month.month + 1, 0);

    return List.generate(
      lastDay.day,
      (index) => DateTime(month.year, month.month, index + 1),
    );
  }
}
