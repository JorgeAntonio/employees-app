import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'calendar_provider.g.dart';

// Modelo de estado inmutable para el calendario
class CalendarState {
  final DateTime selectedDate;
  final DateTime focusedMonth;
  final List<DateTime?> calendarDays;
  final String viewMode;
  final bool isSelectingQuincenaRange;

  const CalendarState({
    required this.selectedDate,
    required this.focusedMonth,
    required this.calendarDays,
    required this.viewMode,
    required this.isSelectingQuincenaRange,
  });

  CalendarState copyWith({
    DateTime? selectedDate,
    DateTime? focusedMonth,
    List<DateTime?>? calendarDays,
    String? viewMode,
    bool? isSelectingQuincenaRange,
  }) {
    return CalendarState(
      selectedDate: selectedDate ?? this.selectedDate,
      focusedMonth: focusedMonth ?? this.focusedMonth,
      calendarDays: calendarDays ?? this.calendarDays,
      viewMode: viewMode ?? this.viewMode,
      isSelectingQuincenaRange:
          isSelectingQuincenaRange ?? this.isSelectingQuincenaRange,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CalendarState &&
          runtimeType == other.runtimeType &&
          selectedDate == other.selectedDate &&
          focusedMonth == other.focusedMonth &&
          _listEquals(calendarDays, other.calendarDays) &&
          viewMode == other.viewMode &&
          isSelectingQuincenaRange == other.isSelectingQuincenaRange;

  @override
  int get hashCode => Object.hash(
    selectedDate,
    focusedMonth,
    Object.hashAll(calendarDays),
    viewMode,
    isSelectingQuincenaRange,
  );

  static bool _listEquals(List? a, List? b) {
    if (a == null || b == null) return a == b;
    if (a.length != b.length) return false;
    for (int i = 0; i < a.length; i++) {
      if (a[i] != b[i]) return false;
    }
    return true;
  }
}

@riverpod
class CalendarNotifier extends _$CalendarNotifier {
  @override
  CalendarState build() {
    final now = DateTime.now();
    final focusedMonth = DateTime(now.year, now.month);
    
    // Generate calendar days synchronously
    final calendarDays = _generateCalendarDaysForMonth(focusedMonth);
    
    return CalendarState(
      selectedDate: now,
      focusedMonth: focusedMonth,
      calendarDays: calendarDays,
      viewMode: 'semana',
      isSelectingQuincenaRange: false,
    );
  }

  // Datos simulados: clases por fecha (YYYY-MM-DD)
  final Map<String, List<Map<String, String>>> clasesPorFecha = {
    '2025-05-27': [
      {'nombre': 'Matemáticas', 'hora': '10:00 AM'},
      {'nombre': 'Historia', 'hora': '2:00 PM'},
    ],
    '2025-05-28': [
      {'nombre': 'Biología', 'hora': '9:00 AM'},
    ],
  };

  List<DateTime?> _generateCalendarDaysForMonth(DateTime month) {
    final year = month.year;
    final monthNumber = month.month;
    final firstDayOfMonth = DateTime(year, monthNumber, 1);
    int daysToSubtract = firstDayOfMonth.weekday - 1;
    final firstVisibleDay = firstDayOfMonth.subtract(
      Duration(days: daysToSubtract),
    );
    final totalDays = 42;
    return List.generate(totalDays, (i) {
      return firstVisibleDay.add(Duration(days: i));
    });
  }

  void _generateCalendarDays() {
    final days = _generateCalendarDaysForMonth(state.focusedMonth);
    state = state.copyWith(calendarDays: days);
  }

  void selectDate(DateTime? date) {
    if (date != null) {
      state = state.copyWith(selectedDate: date);
      if (!state.isSelectingQuincenaRange) {
        if (date.month != state.focusedMonth.month ||
            date.year != state.focusedMonth.year) {
          state = state.copyWith(focusedMonth: DateTime(date.year, date.month));
          _generateCalendarDays();
        }
      }
    }
  }

  void nextMonth() {
    final newMonth = DateTime(
      state.focusedMonth.year,
      state.focusedMonth.month + 1,
    );
    state = state.copyWith(focusedMonth: newMonth);
    _generateCalendarDays();
    if (state.viewMode == 'mes') {
      final lastDayOfMonth = DateTime(newMonth.year, newMonth.month + 1, 0).day;
      final newSelectedDate = DateTime(
        newMonth.year,
        newMonth.month,
        state.selectedDate.day > lastDayOfMonth
            ? lastDayOfMonth
            : state.selectedDate.day,
      );
      state = state.copyWith(selectedDate: newSelectedDate);
    }
  }

  void previousMonth() {
    final newMonth = DateTime(
      state.focusedMonth.year,
      state.focusedMonth.month - 1,
    );
    state = state.copyWith(focusedMonth: newMonth);
    _generateCalendarDays();
    if (state.viewMode == 'mes') {
      final lastDayOfMonth = DateTime(newMonth.year, newMonth.month + 1, 0).day;
      final newSelectedDate = DateTime(
        newMonth.year,
        newMonth.month,
        state.selectedDate.day > lastDayOfMonth
            ? lastDayOfMonth
            : state.selectedDate.day,
      );
      state = state.copyWith(selectedDate: newSelectedDate);
    }
  }

  void goToToday() {
    final today = DateTime.now();
    state = state.copyWith(
      focusedMonth: DateTime(today.year, today.month),
      selectedDate: DateTime(today.year, today.month, today.day),
      isSelectingQuincenaRange: false,
    );
    _generateCalendarDays();
  }

  List<Map<String, String>> getClasesForSelectedDate() {
    final key =
        '${state.selectedDate.year}-${state.selectedDate.month.toString().padLeft(2, '0')}-'
        '${state.selectedDate.day.toString().padLeft(2, '0')}';
    return clasesPorFecha[key] ?? [];
  }

  List<Map<String, String>> getClasesForDate(DateTime date) {
    final key =
        '${date.year}-${date.month.toString().padLeft(2, '0')}-'
        '${date.day.toString().padLeft(2, '0')}';
    return clasesPorFecha[key] ?? [];
  }

  void setViewMode(String mode) {
    state = state.copyWith(
      viewMode: mode,
      isSelectingQuincenaRange: (mode == 'quincena'),
    );
    _generateCalendarDays();
  }

  List<DateTime> getVisibleDays() {
    final days = state.calendarDays.whereType<DateTime>().toList();
    if (state.viewMode == 'mes') {
      return days
          .where(
            (d) =>
                d.month == state.focusedMonth.month &&
                d.year == state.focusedMonth.year,
          )
          .toList();
    } else if (state.viewMode == 'semana') {
      final selected = state.selectedDate;
      final startOfWeek = selected.subtract(
        Duration(days: selected.weekday - 1),
      );
      return List.generate(7, (i) => startOfWeek.add(Duration(days: i)));
    } else if (state.viewMode == 'quincena') {
      final month = state.focusedMonth;
      final selectedDay = state.selectedDate.day;
      if (selectedDay <= 15) {
        return List.generate(
          15,
          (i) => DateTime(month.year, month.month, i + 1),
        );
      } else {
        final lastDay = DateTime(month.year, month.month + 1, 0).day;
        return List.generate(
          lastDay - 15,
          (i) => DateTime(month.year, month.month, 16 + i),
        );
      }
    }
    return days;
  }

  String getCurrentDateRange() {
    if (state.viewMode == 'mes') {
      return '${state.focusedMonth.month}/${state.focusedMonth.year}';
    } else if (state.viewMode == 'semana') {
      final days = getVisibleDays();
      return '${days.first.day}-${days.last.day} ${days.first.month}/${days.first.year}';
    } else if (state.viewMode == 'quincena') {
      final days = getVisibleDays();
      return 'Quincena ${days.first.day}-${days.last.day} ${days.first.month}/${days.first.year}';
    }
    return '';
  }
}

// El provider se genera automáticamente por riverpod_annotation
