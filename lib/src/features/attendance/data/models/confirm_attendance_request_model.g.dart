// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_attendance_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ConfirmAttendanceRequestModel _$ConfirmAttendanceRequestModelFromJson(
  Map<String, dynamic> json,
) => _ConfirmAttendanceRequestModel(
  code: json['code'] as String,
  confirmed: json['confirmed'] as bool?,
  locationId: json['locationId'] as String?,
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
  accuracy: (json['accuracy'] as num?)?.toDouble(),
  name: json['name'] as String?,
  deviceInfo: json['deviceInfo'] == null
      ? null
      : DeviceInfoModel.fromJson(json['deviceInfo'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ConfirmAttendanceRequestModelToJson(
  _ConfirmAttendanceRequestModel instance,
) => <String, dynamic>{
  'code': instance.code,
  'confirmed': instance.confirmed,
  'locationId': instance.locationId,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'accuracy': instance.accuracy,
  'name': instance.name,
  'deviceInfo': instance.deviceInfo,
};

_DeviceInfoModel _$DeviceInfoModelFromJson(Map<String, dynamic> json) =>
    _DeviceInfoModel(
      name: json['name'] as String,
      os: json['os'] as String,
      browser: json['browser'] as String,
      userAgent: json['userAgent'] as String,
    );

Map<String, dynamic> _$DeviceInfoModelToJson(_DeviceInfoModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'os': instance.os,
      'browser': instance.browser,
      'userAgent': instance.userAgent,
    };
