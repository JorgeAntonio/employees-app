import 'package:intl/intl.dart';

/// Utilidades para formatear fechas y horarios con conversión a hora local
class DateTimeUtils {
  static const String _timeFormat = 'HH:mm';
  static const String _dateFormat = 'dd/MM/yyyy';
  static const String _fullDateFormat = 'dd/MM/yyyy HH:mm';

  /// Convierte un DateTime UTC a hora local y lo formatea como HH:mm
  static String formatTimeLocal(DateTime dateTime) {
    final localDateTime = dateTime.toLocal();
    return DateFormat(_timeFormat).format(localDateTime);
  }

  /// Convierte un DateTime UTC a hora local y lo formatea como dd/MM/yyyy
  static String formatDateLocal(DateTime dateTime) {
    final localDateTime = dateTime.toLocal();
    return DateFormat(_dateFormat).format(localDateTime);
  }

  /// Convierte un DateTime UTC a hora local y lo formatea como dd/MM/yyyy HH:mm
  static String formatFullDateTimeLocal(DateTime dateTime) {
    final localDateTime = dateTime.toLocal();
    return DateFormat(_fullDateFormat).format(localDateTime);
  }

  /// Convierte un DateTime UTC a hora local
  static DateTime toLocal(DateTime dateTime) {
    return dateTime.toLocal();
  }

  /// Obtiene texto de fecha amigable (HOY, AYER, nombre del día, etc.)
  static Map<String, String> getFriendlyDateText(DateTime date) {
    final localDate = date.toLocal();
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final cardDate = DateTime(localDate.year, localDate.month, localDate.day);
    final difference = today.difference(cardDate).inDays;

    String dateText;
    String monthText;

    if (difference == 0) {
      dateText = 'HOY';
      monthText = DateFormat('dd').format(localDate);
    } else if (difference == 1) {
      dateText = 'AYER';
      monthText = DateFormat('dd').format(localDate);
    } else if (difference < 7) {
      dateText = DateFormat('EEE', 'es').format(localDate).toUpperCase();
      monthText = DateFormat('dd').format(localDate);
    } else {
      dateText = localDate.day.toString();
      monthText = DateFormat('MMM', 'es').format(localDate).toLowerCase();
    }

    return {
      'dateText': dateText,
      'monthText': monthText,
      'difference': difference.toString(),
    };
  }

  /// Formatea duración en minutos a formato amigable (ej: 2h 30m, 45m)
  static String formatDuration(int minutes) {
    if (minutes < 60) {
      return '${minutes}m';
    }
    final hours = minutes ~/ 60;
    final remainingMinutes = minutes % 60;
    return remainingMinutes > 0
        ? '${hours}h ${remainingMinutes}m'
        : '${hours}h';
  }

  /// Verifica si una fecha es hoy
  static bool isToday(DateTime date) {
    final localDate = date.toLocal();
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final checkDate = DateTime(localDate.year, localDate.month, localDate.day);
    return checkDate.isAtSameMomentAs(today);
  }

  /// Verifica si una fecha es ayer
  static bool isYesterday(DateTime date) {
    final localDate = date.toLocal();
    final now = DateTime.now();
    final yesterday = DateTime(
      now.year,
      now.month,
      now.day,
    ).subtract(const Duration(days: 1));
    final checkDate = DateTime(localDate.year, localDate.month, localDate.day);
    return checkDate.isAtSameMomentAs(yesterday);
  }
}
