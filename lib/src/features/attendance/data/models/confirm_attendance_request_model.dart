import 'package:attendance_app/src/features/attendance/domain/entities/confirm_attendance_request.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'confirm_attendance_request_model.freezed.dart';
part 'confirm_attendance_request_model.g.dart';

@freezed
abstract class ConfirmAttendanceRequestModel
    with _$ConfirmAttendanceRequestModel {
  const factory ConfirmAttendanceRequestModel({
    required String code,
    required bool confirmed,
    String? locationId,
    double? latitude,
    double? longitude,
    double? accuracy,
    String? name,
    DeviceInfoModel? deviceInfo,
  }) = _ConfirmAttendanceRequestModel;

  factory ConfirmAttendanceRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ConfirmAttendanceRequestModelFromJson(json);
}

@freezed
abstract class DeviceInfoModel with _$DeviceInfoModel {
  const factory DeviceInfoModel({
    required String name,
    required String os,
    required String browser,
    required String userAgent,
  }) = _DeviceInfoModel;

  factory DeviceInfoModel.fromJson(Map<String, dynamic> json) =>
      _$DeviceInfoModelFromJson(json);
}

// Extension methods to convert between domain entities and data models
extension ConfirmAttendanceRequestModelX on ConfirmAttendanceRequestModel {
  ConfirmAttendanceRequest toDomain() {
    return ConfirmAttendanceRequest(
      code: code,
      confirmed: confirmed,
      locationId: locationId,
      latitude: latitude,
      longitude: longitude,
      accuracy: accuracy,
      name: name,
      deviceInfo: deviceInfo?.toDomain(),
    );
  }
}

extension ConfirmAttendanceRequestX on ConfirmAttendanceRequest {
  ConfirmAttendanceRequestModel toModel() {
    return ConfirmAttendanceRequestModel(
      code: code,
      confirmed: confirmed,
      locationId: locationId,
      latitude: latitude,
      longitude: longitude,
      accuracy: accuracy,
      name: name,
      deviceInfo: deviceInfo?.toModel(),
    );
  }
}

extension DeviceInfoModelX on DeviceInfoModel {
  DeviceInfo toDomain() {
    return DeviceInfo(
      name: name,
      os: os,
      browser: browser,
      userAgent: userAgent,
    );
  }
}

extension DeviceInfoX on DeviceInfo {
  DeviceInfoModel toModel() {
    return DeviceInfoModel(
      name: name,
      os: os,
      browser: browser,
      userAgent: userAgent,
    );
  }
}
