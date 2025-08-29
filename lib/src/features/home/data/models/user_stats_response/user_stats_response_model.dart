import 'package:attendance_app/src/features/home/domain/entities/user_stats_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_stats_response_model.freezed.dart';
part 'user_stats_response_model.g.dart';

@freezed
abstract class UserStatsResponseModel with _$UserStatsResponseModel {
  const factory UserStatsResponseModel({
    required bool success,
    UserStatsDataModel? data,
    String? message,
  }) = _UserStatsResponseModel;

  factory UserStatsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UserStatsResponseModelFromJson(json);
}

@freezed
abstract class UserStatsDataModel with _$UserStatsDataModel {
  const factory UserStatsDataModel({
    required PeriodModel period,
    required EmployeeInfoModel employee,
    required StatisticsModel statistics,
    required List<RecentAttendanceModel> recentAttendances,
  }) = _UserStatsDataModel;

  factory UserStatsDataModel.fromJson(Map<String, dynamic> json) =>
      _$UserStatsDataModelFromJson(json);
}

@freezed
abstract class PeriodModel with _$PeriodModel {
  const factory PeriodModel({
    required String startDate,
    required String endDate,
    required int days,
  }) = _PeriodModel;

  factory PeriodModel.fromJson(Map<String, dynamic> json) =>
      _$PeriodModelFromJson(json);
}

@freezed
abstract class EmployeeInfoModel with _$EmployeeInfoModel {
  const factory EmployeeInfoModel({
    required String id,
    required String firstName,
    required String lastName,
    required String department,
    required String position,
    String? shift,
  }) = _EmployeeInfoModel;

  factory EmployeeInfoModel.fromJson(Map<String, dynamic> json) =>
      _$EmployeeInfoModelFromJson(json);
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

  factory StatisticsModel.fromJson(Map<String, dynamic> json) =>
      _$StatisticsModelFromJson(json);
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

  factory RecentAttendanceModel.fromJson(Map<String, dynamic> json) =>
      _$RecentAttendanceModelFromJson(json);
}

// Extensions to convert from Model to Domain
extension UserStatsResponseModelX on UserStatsResponseModel {
  UserStatsEntityResponse toDomain() {
    return UserStatsEntityResponse(success: success, data: data!.toDomain());
  }
}

extension UserStatsDataModelX on UserStatsDataModel {
  UserStatsData toDomain() {
    return UserStatsData(
      period: period.toDomain(),
      employee: employee.toDomain(),
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
      shift: shift,
    );
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
