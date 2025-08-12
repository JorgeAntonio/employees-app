import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/confirm_attendance_response.dart';

part 'confirm_attendance_response_model.freezed.dart';
part 'confirm_attendance_response_model.g.dart';

@freezed
abstract class ConfirmAttendanceResponseModel with _$ConfirmAttendanceResponseModel {
  const factory ConfirmAttendanceResponseModel({
    required bool success,
    ConfirmAttendanceDataModel? data,
    String? message,
  }) = _ConfirmAttendanceResponseModel;

  factory ConfirmAttendanceResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ConfirmAttendanceResponseModelFromJson(json);
}

@freezed
abstract class ConfirmAttendanceDataModel with _$ConfirmAttendanceDataModel {
  const factory ConfirmAttendanceDataModel({
    required String message,
    required AttendanceModel attendance,
  }) = _ConfirmAttendanceDataModel;

  factory ConfirmAttendanceDataModel.fromJson(Map<String, dynamic> json) =>
      _$ConfirmAttendanceDataModelFromJson(json);
}

@freezed
abstract class AttendanceModel with _$AttendanceModel {
  const factory AttendanceModel({
    required String id,
    required String employeeId,
    required DateTime date,
    DateTime? checkInTime,
    DateTime? checkOutTime,
    required int durationMins,
    required String status,
    String? checkInLocationId,
    String? checkOutLocationId,
    String? deviceId,
    required DateTime createdAt,
    required DateTime updatedAt,
    required AttendanceEmployeeModel employee,
    AttendanceLocationModel? checkInLocation,
    AttendanceLocationModel? checkOutLocation,
    AttendanceDeviceModel? device,
  }) = _AttendanceModel;

  factory AttendanceModel.fromJson(Map<String, dynamic> json) =>
      _$AttendanceModelFromJson(json);
}

@freezed
abstract class AttendanceEmployeeModel with _$AttendanceEmployeeModel {
  const factory AttendanceEmployeeModel({
    required String firstName,
    required String lastName,
    required String dni,
  }) = _AttendanceEmployeeModel;

  factory AttendanceEmployeeModel.fromJson(Map<String, dynamic> json) =>
      _$AttendanceEmployeeModelFromJson(json);
}

@freezed
abstract class AttendanceLocationModel with _$AttendanceLocationModel {
  const factory AttendanceLocationModel({
    required String id,
    required String name,
    double? latitude,
    double? longitude,
    double? accuracy,
  }) = _AttendanceLocationModel;

  factory AttendanceLocationModel.fromJson(Map<String, dynamic> json) =>
      _$AttendanceLocationModelFromJson(json);
}

@freezed
abstract class AttendanceDeviceModel with _$AttendanceDeviceModel {
  const factory AttendanceDeviceModel({
    required String id,
    required String name,
    required String os,
    required String browser,
    required String userAgent,
  }) = _AttendanceDeviceModel;

  factory AttendanceDeviceModel.fromJson(Map<String, dynamic> json) =>
      _$AttendanceDeviceModelFromJson(json);
}

// Extension methods to convert between domain entities and data models
extension ConfirmAttendanceResponseModelX on ConfirmAttendanceResponseModel {
  ConfirmAttendanceResponse toDomain() {
    return ConfirmAttendanceResponse(
      success: success,
      data: data?.toDomain(),
      message: message,
    );
  }
}

extension ConfirmAttendanceDataModelX on ConfirmAttendanceDataModel {
  ConfirmAttendanceData toDomain() {
    return ConfirmAttendanceData(
      message: message,
      attendance: attendance.toDomain(),
    );
  }
}

extension AttendanceModelX on AttendanceModel {
  Attendance toDomain() {
    return Attendance(
      id: id,
      employeeId: employeeId,
      date: date,
      checkInTime: checkInTime,
      checkOutTime: checkOutTime,
      durationMins: durationMins,
      status: status,
      checkInLocationId: checkInLocationId,
      checkOutLocationId: checkOutLocationId,
      deviceId: deviceId,
      createdAt: createdAt,
      updatedAt: updatedAt,
      employee: employee.toDomain(),
      checkInLocation: checkInLocation?.toDomain(),
      checkOutLocation: checkOutLocation?.toDomain(),
      device: device?.toDomain(),
    );
  }
}

extension AttendanceEmployeeModelX on AttendanceEmployeeModel {
  AttendanceEmployee toDomain() {
    return AttendanceEmployee(
      firstName: firstName,
      lastName: lastName,
      dni: dni,
    );
  }
}

extension AttendanceLocationModelX on AttendanceLocationModel {
  AttendanceLocation toDomain() {
    return AttendanceLocation(
      id: id,
      name: name,
      latitude: latitude,
      longitude: longitude,
      accuracy: accuracy,
    );
  }
}

extension AttendanceDeviceModelX on AttendanceDeviceModel {
  AttendanceDevice toDomain() {
    return AttendanceDevice(
      id: id,
      name: name,
      os: os,
      browser: browser,
      userAgent: userAgent,
    );
  }
}