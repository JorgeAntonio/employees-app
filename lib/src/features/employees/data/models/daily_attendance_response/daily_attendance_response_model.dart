import 'package:attendance_app/src/core/models/pagination_response_model.dart';
import 'package:attendance_app/src/features/employees/domain/entities/daily_attendance_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_attendance_response_model.freezed.dart';
part 'daily_attendance_response_model.g.dart';

@freezed
abstract class DailyAttendanceResponseModel
    with _$DailyAttendanceResponseModel {
  const factory DailyAttendanceResponseModel({
    required bool success,
    DailyAttendanceDataModel? data,
    String? message,
  }) = _DailyAttendanceResponseModel;

  factory DailyAttendanceResponseModel.fromJson(Map<String, dynamic> json) =>
      _$DailyAttendanceResponseModelFromJson(json);
}

@freezed
abstract class DailyAttendanceDataModel with _$DailyAttendanceDataModel {
  const factory DailyAttendanceDataModel({
    required String date,
    required List<EmployeeAttendanceModel> employees,
    required AttendanceStatsModel stats,
    required PaginationResponseModel pagination,
    required AttendanceFiltersModel filters,
  }) = _DailyAttendanceDataModel;

  factory DailyAttendanceDataModel.fromJson(Map<String, dynamic> json) =>
      _$DailyAttendanceDataModelFromJson(json);
}

@freezed
abstract class EmployeeAttendanceModel with _$EmployeeAttendanceModel {
  const factory EmployeeAttendanceModel({
    required String id,
    required String firstName,
    required String lastName,
    required String dni,
    required String position,
    required String department,
    String? phone,
    String? photoUrl,
    String? shift,
    required AttendanceUserModel user,
    List<AttendanceRecordModel>? attendances,
    required String attendanceStatus,
    required String statusLabel,
  }) = _EmployeeAttendanceModel;

  factory EmployeeAttendanceModel.fromJson(Map<String, dynamic> json) =>
      _$EmployeeAttendanceModelFromJson(json);
}

@freezed
abstract class AttendanceUserModel with _$AttendanceUserModel {
  const factory AttendanceUserModel({
    required String id,
    required String email,
  }) = _AttendanceUserModel;

  factory AttendanceUserModel.fromJson(Map<String, dynamic> json) =>
      _$AttendanceUserModelFromJson(json);
}

@freezed
abstract class AttendanceRecordModel with _$AttendanceRecordModel {
  const factory AttendanceRecordModel({
    required String id,
    DateTime? checkInTime,
    DateTime? checkOutTime,
    int? durationMins,
    required String status,
    dynamic checkInLocation,
    dynamic checkOutLocation,
    dynamic device,
  }) = _AttendanceRecordModel;

  factory AttendanceRecordModel.fromJson(Map<String, dynamic> json) =>
      _$AttendanceRecordModelFromJson(json);
}

@freezed
abstract class AttendanceStatsModel with _$AttendanceStatsModel {
  const factory AttendanceStatsModel({
    required int total,
    required int present,
    required int absent,
    required int late,
    required int active,
    required int completed,
  }) = _AttendanceStatsModel;

  factory AttendanceStatsModel.fromJson(Map<String, dynamic> json) =>
      _$AttendanceStatsModelFromJson(json);
}

@freezed
abstract class AttendanceFiltersModel with _$AttendanceFiltersModel {
  const factory AttendanceFiltersModel({String? department, String? position}) =
      _AttendanceFiltersModel;

  factory AttendanceFiltersModel.fromJson(Map<String, dynamic> json) =>
      _$AttendanceFiltersModelFromJson(json);
}

// Extensions para convertir a entidades de dominio
extension DailyAttendanceResponseModelX on DailyAttendanceResponseModel {
  DailyAttendanceResponse toDomain() {
    return DailyAttendanceResponse(
      success: success,
      data: data?.toDomain(),
      message: message,
    );
  }
}

extension DailyAttendanceDataModelX on DailyAttendanceDataModel {
  DailyAttendanceData toDomain() {
    return DailyAttendanceData(
      date: date,
      employees: employees.map((e) => e.toDomain()).toList(),
      stats: stats.toDomain(),
      pagination: pagination.toDomain(),
      filters: filters.toDomain(),
    );
  }
}

extension EmployeeAttendanceModelX on EmployeeAttendanceModel {
  EmployeeAttendance toDomain() {
    return EmployeeAttendance(
      id: id,
      firstName: firstName,
      lastName: lastName,
      dni: dni,
      position: position,
      department: department,
      phone: phone,
      photoUrl: photoUrl,
      shift: shift,
      user: user.toDomain(),
      attendances: attendances?.map((a) => a.toDomain()).toList(),
      attendanceStatus: attendanceStatus,
      statusLabel: statusLabel,
    );
  }
}

extension AttendanceUserModelX on AttendanceUserModel {
  AttendanceUser toDomain() {
    return AttendanceUser(id: id, email: email);
  }
}

extension AttendanceRecordModelX on AttendanceRecordModel {
  AttendanceRecord toDomain() {
    return AttendanceRecord(
      id: id,
      checkInTime: checkInTime,
      checkOutTime: checkOutTime,
      durationMins: durationMins,
      status: status,
      checkInLocation: checkInLocation,
      checkOutLocation: checkOutLocation,
      device: device,
    );
  }
}

extension AttendanceStatsModelX on AttendanceStatsModel {
  AttendanceStats toDomain() {
    return AttendanceStats(
      total: total,
      present: present,
      absent: absent,
      late: late,
      active: active,
      completed: completed,
    );
  }
}

extension AttendanceFiltersModelX on AttendanceFiltersModel {
  AttendanceFilters toDomain() {
    return AttendanceFilters(department: department, position: position);
  }
}
