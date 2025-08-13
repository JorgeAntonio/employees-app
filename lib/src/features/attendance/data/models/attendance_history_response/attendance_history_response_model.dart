import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/attendance_history_response.dart';

part 'attendance_history_response_model.freezed.dart';
part 'attendance_history_response_model.g.dart';

@freezed
abstract class AttendanceHistoryResponseModel with _$AttendanceHistoryResponseModel {
  const factory AttendanceHistoryResponseModel({
    required bool success,
    AttendanceHistoryDataModel? data,
    String? message,
  }) = _AttendanceHistoryResponseModel;

  factory AttendanceHistoryResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AttendanceHistoryResponseModelFromJson(json);
}

@freezed
abstract class AttendanceHistoryDataModel with _$AttendanceHistoryDataModel {
  const factory AttendanceHistoryDataModel({
    required List<AttendanceHistoryItemModel> attendances,
    required PaginationInfoModel pagination,
  }) = _AttendanceHistoryDataModel;

  factory AttendanceHistoryDataModel.fromJson(Map<String, dynamic> json) =>
      _$AttendanceHistoryDataModelFromJson(json);
}

@freezed
abstract class AttendanceHistoryItemModel with _$AttendanceHistoryItemModel {
  const factory AttendanceHistoryItemModel({
    required String id,
    required String employeeId,
    required DateTime date,
    DateTime? checkInTime,
    DateTime? checkOutTime,
    int? durationMins,
    required String status,
    String? checkInLocationId,
    String? checkOutLocationId,
    String? deviceId,
    required DateTime createdAt,
    required DateTime updatedAt,
    required AttendanceHistoryEmployeeModel employee,
    AttendanceHistoryLocationModel? checkInLocation,
    AttendanceHistoryLocationModel? checkOutLocation,
    AttendanceHistoryDeviceModel? device,
  }) = _AttendanceHistoryItemModel;

  factory AttendanceHistoryItemModel.fromJson(Map<String, dynamic> json) =>
      _$AttendanceHistoryItemModelFromJson(json);
}

@freezed
abstract class AttendanceHistoryEmployeeModel with _$AttendanceHistoryEmployeeModel {
  const factory AttendanceHistoryEmployeeModel({
    required String id,
    required String firstName,
    required String lastName,
    required String dni,
    required String position,
    required String department,
  }) = _AttendanceHistoryEmployeeModel;

  factory AttendanceHistoryEmployeeModel.fromJson(Map<String, dynamic> json) =>
      _$AttendanceHistoryEmployeeModelFromJson(json);
}

@freezed
abstract class AttendanceHistoryLocationModel with _$AttendanceHistoryLocationModel {
  const factory AttendanceHistoryLocationModel({
    required String id,
    required String name,
    double? latitude,
    double? longitude,
    double? accuracy,
  }) = _AttendanceHistoryLocationModel;

  factory AttendanceHistoryLocationModel.fromJson(Map<String, dynamic> json) =>
      _$AttendanceHistoryLocationModelFromJson(json);
}

@freezed
abstract class AttendanceHistoryDeviceModel with _$AttendanceHistoryDeviceModel {
  const factory AttendanceHistoryDeviceModel({
    required String id,
    required String name,
    required String os,
    required String browser,
    required String userAgent,
  }) = _AttendanceHistoryDeviceModel;

  factory AttendanceHistoryDeviceModel.fromJson(Map<String, dynamic> json) =>
      _$AttendanceHistoryDeviceModelFromJson(json);
}

@freezed
abstract class PaginationInfoModel with _$PaginationInfoModel {
  const factory PaginationInfoModel({
    required int page,
    required int limit,
    required int total,
    required int totalPages,
  }) = _PaginationInfoModel;

  factory PaginationInfoModel.fromJson(Map<String, dynamic> json) =>
      _$PaginationInfoModelFromJson(json);
}

// Extension methods to convert between domain entities and data models
extension AttendanceHistoryResponseModelX on AttendanceHistoryResponseModel {
  AttendanceHistoryResponse toDomain() {
    return AttendanceHistoryResponse(
      success: success,
      data: data?.toDomain(),
      message: message,
    );
  }
}

extension AttendanceHistoryDataModelX on AttendanceHistoryDataModel {
  AttendanceHistoryData toDomain() {
    return AttendanceHistoryData(
      attendances: attendances.map((item) => item.toDomain()).toList(),
      pagination: pagination.toDomain(),
    );
  }
}

extension AttendanceHistoryItemModelX on AttendanceHistoryItemModel {
  AttendanceHistoryItem toDomain() {
    return AttendanceHistoryItem(
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

extension AttendanceHistoryEmployeeModelX on AttendanceHistoryEmployeeModel {
  AttendanceHistoryEmployee toDomain() {
    return AttendanceHistoryEmployee(
      id: id,
      firstName: firstName,
      lastName: lastName,
      dni: dni,
      position: position,
      department: department,
    );
  }
}

extension AttendanceHistoryLocationModelX on AttendanceHistoryLocationModel {
  AttendanceHistoryLocation toDomain() {
    return AttendanceHistoryLocation(
      id: id,
      name: name,
      latitude: latitude,
      longitude: longitude,
      accuracy: accuracy,
    );
  }
}

extension AttendanceHistoryDeviceModelX on AttendanceHistoryDeviceModel {
  AttendanceHistoryDevice toDomain() {
    return AttendanceHistoryDevice(
      id: id,
      name: name,
      os: os,
      browser: browser,
      userAgent: userAgent,
    );
  }
}

extension PaginationInfoModelX on PaginationInfoModel {
  PaginationInfo toDomain() {
    return PaginationInfo(
      page: page,
      limit: limit,
      total: total,
      totalPages: totalPages,
    );
  }
}