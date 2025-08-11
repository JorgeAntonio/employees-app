import 'package:attendance_app/src/features/attendance/domain/entities/attendance_entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_models.freezed.dart';
part 'attendance_models.g.dart';

@freezed
abstract class QRCodeModel with _$QRCodeModel {
  const factory QRCodeModel({
    required String qrCode,
    required String manualCode,
    required DateTime expiresAt,
    required String type,
  }) = _QRCodeModel;

  factory QRCodeModel.fromJson(Map<String, dynamic> json) =>
      _$QRCodeModelFromJson(json);

  factory QRCodeModel.fromEntity(QRCode entity) => QRCodeModel(
    qrCode: entity.qrCode,
    manualCode: entity.manualCode,
    expiresAt: entity.expiresAt,
    type: entity.type,
  );
}

@freezed
abstract class EmployeeModel with _$EmployeeModel {
  const factory EmployeeModel({
    required String id,
    required String firstName,
    required String lastName,
    required String email,
    required String position,
  }) = _EmployeeModel;

  factory EmployeeModel.fromJson(Map<String, dynamic> json) =>
      _$EmployeeModelFromJson(json);

  factory EmployeeModel.fromEntity(Employee entity) => EmployeeModel(
    id: entity.id,
    firstName: entity.firstName,
    lastName: entity.lastName,
    email: entity.email,
    position: entity.position,
  );
}

@freezed
abstract class AttendanceValidationModel with _$AttendanceValidationModel {
  const factory AttendanceValidationModel({
    required EmployeeModel employee,
    required String type,
    required DateTime timestamp,
    required String location,
  }) = _AttendanceValidationModel;

  factory AttendanceValidationModel.fromJson(Map<String, dynamic> json) =>
      _$AttendanceValidationModelFromJson(json);

  factory AttendanceValidationModel.fromEntity(AttendanceValidation entity) =>
      AttendanceValidationModel(
        employee: EmployeeModel.fromEntity(entity.employee),
        type: entity.type,
        timestamp: entity.timestamp,
        location: entity.location,
      );
}

@freezed
abstract class AttendanceRecordModel with _$AttendanceRecordModel {
  const factory AttendanceRecordModel({
    required String id,
    required String employeeId,
    required String type,
    required DateTime timestamp,
    required String location,
  }) = _AttendanceRecordModel;

  factory AttendanceRecordModel.fromJson(Map<String, dynamic> json) =>
      _$AttendanceRecordModelFromJson(json);

  factory AttendanceRecordModel.fromEntity(AttendanceRecord entity) =>
      AttendanceRecordModel(
        id: entity.id,
        employeeId: entity.employeeId,
        type: entity.type,
        timestamp: entity.timestamp,
        location: entity.location,
      );
}

@freezed
abstract class AttendanceStatusModel with _$AttendanceStatusModel {
  const factory AttendanceStatusModel({
    required bool isCheckedIn,
    required DateTime? lastCheckIn,
    required DateTime? lastCheckOut,
    required int todayDuration,
    required String currentStatus,
  }) = _AttendanceStatusModel;

  factory AttendanceStatusModel.fromJson(Map<String, dynamic> json) =>
      _$AttendanceStatusModelFromJson(json);

  factory AttendanceStatusModel.fromEntity(AttendanceStatus entity) =>
      AttendanceStatusModel(
        isCheckedIn: entity.isCheckedIn,
        lastCheckIn: entity.lastCheckIn,
        lastCheckOut: entity.lastCheckOut,
        todayDuration: entity.todayDuration,
        currentStatus: entity.currentStatus,
      );
}

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String email,
    required String role,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  factory UserModel.fromEntity(User entity) =>
      UserModel(id: entity.id, email: entity.email, role: entity.role);
}

@freezed
abstract class ShiftModel with _$ShiftModel {
  const factory ShiftModel({
    required String id,
    required String name,
    required String startTime,
    required String endTime,
  }) = _ShiftModel;

  factory ShiftModel.fromJson(Map<String, dynamic> json) =>
      _$ShiftModelFromJson(json);

  factory ShiftModel.fromEntity(Shift entity) => ShiftModel(
    id: entity.id,
    name: entity.name,
    startTime: entity.startTime,
    endTime: entity.endTime,
  );
}

@freezed
abstract class EmployeeProfileModel with _$EmployeeProfileModel {
  const factory EmployeeProfileModel({
    required String id,
    required String firstName,
    required String lastName,
    required String email,
    required String position,
    required UserModel user,
    required ShiftModel? shift,
  }) = _EmployeeProfileModel;

  factory EmployeeProfileModel.fromJson(Map<String, dynamic> json) =>
      _$EmployeeProfileModelFromJson(json);

  factory EmployeeProfileModel.fromEntity(EmployeeProfile entity) =>
      EmployeeProfileModel(
        id: entity.id,
        firstName: entity.firstName,
        lastName: entity.lastName,
        email: entity.email,
        position: entity.position,
        user: UserModel.fromEntity(entity.user),
        shift: entity.shift != null
            ? ShiftModel.fromEntity(entity.shift!)
            : null,
      );
}

@freezed
abstract class AttendanceHistoryModel with _$AttendanceHistoryModel {
  const factory AttendanceHistoryModel({
    required List<AttendanceRecordModel> records,
    required int total,
    required int page,
    required int limit,
  }) = _AttendanceHistoryModel;

  factory AttendanceHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$AttendanceHistoryModelFromJson(json);

  factory AttendanceHistoryModel.fromEntity(AttendanceHistory entity) =>
      AttendanceHistoryModel(
        records: entity.records
            .map((record) => AttendanceRecordModel.fromEntity(record))
            .toList(),
        total: entity.total,
        page: entity.page,
        limit: entity.limit,
      );
}

@freezed
abstract class LocationInfoModel with _$LocationInfoModel {
  const factory LocationInfoModel({
    String? locationId,
    double? latitude,
    double? longitude,
    double? accuracy,
    String? name,
  }) = _LocationInfoModel;

  factory LocationInfoModel.fromJson(Map<String, dynamic> json) =>
      _$LocationInfoModelFromJson(json);

  factory LocationInfoModel.fromEntity(LocationInfo entity) =>
      LocationInfoModel(
        locationId: entity.locationId,
        latitude: entity.latitude,
        longitude: entity.longitude,
        accuracy: entity.accuracy,
        name: entity.name,
      );
}

@freezed
abstract class DeviceInfoModel with _$DeviceInfoModel {
  const factory DeviceInfoModel({
    String? name,
    String? os,
    String? browser,
    String? userAgent,
  }) = _DeviceInfoModel;

  factory DeviceInfoModel.fromJson(Map<String, dynamic> json) =>
      _$DeviceInfoModelFromJson(json);

  factory DeviceInfoModel.fromEntity(DeviceInfo entity) => DeviceInfoModel(
    name: entity.name,
    os: entity.os,
    browser: entity.browser,
    userAgent: entity.userAgent,
  );
}

// Extension methods to convert models to entities
extension QRCodeModelX on QRCodeModel {
  QRCode toEntity() => QRCode(
    qrCode: qrCode,
    manualCode: manualCode,
    expiresAt: expiresAt,
    type: type,
  );
}

extension EmployeeModelX on EmployeeModel {
  Employee toEntity() => Employee(
    id: id,
    firstName: firstName,
    lastName: lastName,
    email: email,
    position: position,
  );
}

extension AttendanceValidationModelX on AttendanceValidationModel {
  AttendanceValidation toEntity() => AttendanceValidation(
    employee: employee.toEntity(),
    type: type,
    timestamp: timestamp,
    location: location,
  );
}

extension AttendanceRecordModelX on AttendanceRecordModel {
  AttendanceRecord toEntity() => AttendanceRecord(
    id: id,
    employeeId: employeeId,
    type: type,
    timestamp: timestamp,
    location: location,
  );
}

extension AttendanceStatusModelX on AttendanceStatusModel {
  AttendanceStatus toEntity() => AttendanceStatus(
    isCheckedIn: isCheckedIn,
    lastCheckIn: lastCheckIn,
    lastCheckOut: lastCheckOut,
    todayDuration: todayDuration,
    currentStatus: currentStatus,
  );
}

extension UserModelX on UserModel {
  User toEntity() => User(id: id, email: email, role: role);
}

extension ShiftModelX on ShiftModel {
  Shift toEntity() =>
      Shift(id: id, name: name, startTime: startTime, endTime: endTime);
}

extension EmployeeProfileModelX on EmployeeProfileModel {
  EmployeeProfile toEntity() => EmployeeProfile(
    id: id,
    firstName: firstName,
    lastName: lastName,
    email: email,
    position: position,
    user: user.toEntity(),
    shift: shift?.toEntity(),
  );
}

extension AttendanceHistoryModelX on AttendanceHistoryModel {
  AttendanceHistory toEntity() => AttendanceHistory(
    records: records.map((record) => record.toEntity()).toList(),
    total: total,
    page: page,
    limit: limit,
  );
}

extension LocationInfoModelX on LocationInfoModel {
  LocationInfo toEntity() => LocationInfo(
    locationId: locationId,
    latitude: latitude,
    longitude: longitude,
    accuracy: accuracy,
    name: name,
  );
}

extension DeviceInfoModelX on DeviceInfoModel {
  DeviceInfo toEntity() =>
      DeviceInfo(name: name, os: os, browser: browser, userAgent: userAgent);
}
