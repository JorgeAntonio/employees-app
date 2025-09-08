import 'package:attendance_app/src/features/home/domain/entities/user_stats_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_stats_response_model.freezed.dart';

@freezed
abstract class UserStatsResponseModel with _$UserStatsResponseModel {
  const factory UserStatsResponseModel({
    required bool success,
    UserStatsDataModel? data,
    String? message,
  }) = _UserStatsResponseModel;

  factory UserStatsResponseModel.fromJson(Map<String, dynamic> json) {
    return UserStatsResponseModel(
      success: json['success'] as bool,
      data: json['data'] != null
          ? UserStatsDataModel.fromJson(json['data'] as Map<String, dynamic>)
          : null,
      message: json['message'] as String?,
    );
  }
}

@freezed
abstract class UserStatsDataModel with _$UserStatsDataModel {
  const factory UserStatsDataModel({
    required PeriodModel period,
    EmployeeInfoModel? employee,
    required StatisticsModel statistics,
    required List<RecentAttendanceModel> recentAttendances,
  }) = _UserStatsDataModel;

  factory UserStatsDataModel.fromJson(Map<String, dynamic> json) {
    return UserStatsDataModel(
      period: PeriodModel.fromJson(json['period'] as Map<String, dynamic>),
      employee: json['employee'] != null
          ? EmployeeInfoModel.fromJson(json['employee'] as Map<String, dynamic>)
          : null,
      statistics: StatisticsModel.fromJson(
        json['statistics'] as Map<String, dynamic>,
      ),
      recentAttendances: (json['recentAttendances'] as List<dynamic>)
          .map((e) => RecentAttendanceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}

@freezed
abstract class PeriodModel with _$PeriodModel {
  const factory PeriodModel({
    required String startDate,
    required String endDate,
    required int days,
  }) = _PeriodModel;

  factory PeriodModel.fromJson(Map<String, dynamic> json) {
    return PeriodModel(
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String,
      days: json['days'] as int,
    );
  }
}

@freezed
abstract class EmployeeInfoModel with _$EmployeeInfoModel {
  const factory EmployeeInfoModel({
    required String id,
    required String firstName,
    required String lastName,
    required String department,
    required String position,
    ShiftModel? shift,
  }) = _EmployeeInfoModel;

  factory EmployeeInfoModel.fromJson(Map<String, dynamic> json) {
    return EmployeeInfoModel(
      id: json['id'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      department: json['department'] as String,
      position: json['position'] as String,
      shift: json['shift'] != null
          ? ShiftModel.fromJson(json['shift'] as Map<String, dynamic>)
          : null,
    );
  }
}

@freezed
abstract class ShiftModel with _$ShiftModel {
  const factory ShiftModel({
    required String name,
    required DateTime startTime,
    required DateTime endTime,
  }) = _ShiftModel;

  factory ShiftModel.fromJson(Map<String, dynamic> json) {
    return ShiftModel(
      name: json['name'] as String,
      startTime: _parseDateTime(json['startTime']),
      endTime: _parseDateTime(json['endTime']),
    );
  }
}

// Función helper para parsear el formato de fecha personalizado
DateTime _parseDateTime(dynamic value) {
  if (value is String) {
    // Manejar el formato: "Mon Aug 25 2025 19:00:00 GMT+0000 (Coordinated Universal Time)"
    try {
      // Primero intentar parsing directo por si es ISO 8601
      return DateTime.parse(value);
    } catch (e) {
      // Si falla, intentar parsear el formato personalizado
      try {
        // Remover la parte "(Coordinated Universal Time)" y normalizar
        String cleanValue = value.replaceAll(RegExp(r'\s*\([^)]*\)'), '');

        // Convertir a un formato que DateTime.parse pueda entender
        // "Mon Aug 25 2025 19:00:00 GMT+0000" -> "2025-08-25T19:00:00.000Z"
        final parts = cleanValue.trim().split(' ');
        if (parts.length >= 6) {
          final monthMap = {
            'Jan': '01',
            'Feb': '02',
            'Mar': '03',
            'Apr': '04',
            'May': '05',
            'Jun': '06',
            'Jul': '07',
            'Aug': '08',
            'Sep': '09',
            'Oct': '10',
            'Nov': '11',
            'Dec': '12',
          };

          final month = monthMap[parts[1]] ?? '01';
          final day = parts[2].padLeft(2, '0');
          final year = parts[3];
          final time = parts[4];

          final isoString = '$year-$month-${day}T$time.000Z';
          return DateTime.parse(isoString);
        }
      } catch (parseError) {
        print('Error parsing custom date format: $value, error: $parseError');
      }

      // Si todo falla, retornar una fecha por defecto
      return DateTime.now();
    }
  }
  return DateTime.now();
}

@freezed
abstract class StatisticsModel with _$StatisticsModel {
  const factory StatisticsModel({
    required int totalDays,
    required int presences,
    required int absences,
    required int lateArrivals,
    required int justified,
    required double punctualityRate,
    required double averageHours,
    required double attendanceRate,
  }) = _StatisticsModel;

  factory StatisticsModel.fromJson(Map<String, dynamic> json) {
    return StatisticsModel(
      totalDays: json['totalDays'] as int,
      presences: json['presences'] as int,
      absences: json['absences'] as int,
      lateArrivals: json['lateArrivals'] as int,
      justified: json['justified'] as int,
      punctualityRate: (json['punctualityRate'] as num).toDouble(),
      averageHours: (json['averageHours'] as num).toDouble(),
      attendanceRate: (json['attendanceRate'] as num).toDouble(),
    );
  }
}

@freezed
abstract class RecentAttendanceModel with _$RecentAttendanceModel {
  const factory RecentAttendanceModel({
    required DateTime date,
    required DateTime checkInTime,
    DateTime? checkOutTime,
    required String status,
    int? durationMins,
  }) = _RecentAttendanceModel;

  factory RecentAttendanceModel.fromJson(Map<String, dynamic> json) {
    return RecentAttendanceModel(
      date: DateTime.parse(json['date'] as String),
      checkInTime: DateTime.parse(json['checkInTime'] as String),
      checkOutTime: json['checkOutTime'] != null
          ? DateTime.parse(json['checkOutTime'] as String)
          : null,
      status: json['status'] as String,
      durationMins: json['durationMins'] as int?,
    );
  }
}

// Extensions to convert from Model to Domain
extension UserStatsResponseModelX on UserStatsResponseModel {
  UserStatsEntityResponse toDomain() {
    if (data == null) {
      throw Exception(
        'No se pudieron obtener las estadísticas del usuario: datos no disponibles',
      );
    }
    return UserStatsEntityResponse(success: success, data: data!.toDomain());
  }
}

extension UserStatsDataModelX on UserStatsDataModel {
  UserStatsData toDomain() {
    return UserStatsData(
      period: period.toDomain(),
      employee: employee?.toDomain(),
      statistics: statistics.toDomain(),
      recentAttendances: recentAttendances.map((e) => e.toDomain()).toList(),
    );
  }
}

extension PeriodModelX on PeriodModel {
  Period toDomain() {
    return Period(startDate: startDate, endDate: endDate, days: days);
  }
}

extension EmployeeInfoModelX on EmployeeInfoModel {
  EmployeeInfo toDomain() {
    return EmployeeInfo(
      id: id,
      firstName: firstName,
      lastName: lastName,
      department: department,
      position: position,
      shift: shift?.toDomain(),
    );
  }
}

extension ShiftModelX on ShiftModel {
  Shift toDomain() {
    return Shift(name: name, startTime: startTime, endTime: endTime);
  }
}

extension StatisticsModelX on StatisticsModel {
  Statistics toDomain() {
    return Statistics(
      totalDays: totalDays,
      presences: presences,
      absences: absences,
      lateArrivals: lateArrivals,
      justified: justified,
      punctualityRate: punctualityRate,
      averageHours: averageHours,
      attendanceRate: attendanceRate,
    );
  }
}

extension RecentAttendanceModelX on RecentAttendanceModel {
  RecentAttendance toDomain() {
    return RecentAttendance(
      date: date,
      checkInTime: checkInTime,
      checkOutTime: checkOutTime,
      status: status,
      durationMins: durationMins,
    );
  }
}
