String getDayName(DateTime now) {
  final days = [
    'Lunes',
    'Martes',
    'Miércoles',
    'Jueves',
    'Viernes',
    'Sábado',
    'Domingo',
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

class CurrentDate {
  late final now = DateTime.now();
  late final dayName = getDayName(now).substring(0, 3);
  late final monthName = getMonthName(now.month).substring(0, 3);
  late final year = now.year;
  late final formattedDate = '$dayName, ${now.day} de $monthName';
}

final formattedDate = CurrentDate().formattedDate;

// Función para comparar fechas sin hora
bool isSameDate(DateTime a, DateTime b) =>
    a.year == b.year && a.month == b.month && a.day == b.day;
