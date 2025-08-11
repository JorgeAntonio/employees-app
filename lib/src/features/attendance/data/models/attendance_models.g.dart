// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QRCodeModel _$QRCodeModelFromJson(Map<String, dynamic> json) => _QRCodeModel(
  qrCode: json['qrCode'] as String,
  manualCode: json['manualCode'] as String,
  expiresAt: DateTime.parse(json['expiresAt'] as String),
  type: json['type'] as String,
);

Map<String, dynamic> _$QRCodeModelToJson(_QRCodeModel instance) =>
    <String, dynamic>{
      'qrCode': instance.qrCode,
      'manualCode': instance.manualCode,
      'expiresAt': instance.expiresAt.toIso8601String(),
      'type': instance.type,
    };

_EmployeeModel _$EmployeeModelFromJson(Map<String, dynamic> json) =>
    _EmployeeModel(
      id: json['id'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      position: json['position'] as String,
    );

Map<String, dynamic> _$EmployeeModelToJson(_EmployeeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'position': instance.position,
    };

_AttendanceValidationModel _$AttendanceValidationModelFromJson(
  Map<String, dynamic> json,
) => _AttendanceValidationModel(
  employee: EmployeeModel.fromJson(json['employee'] as Map<String, dynamic>),
  type: json['type'] as String,
  timestamp: DateTime.parse(json['timestamp'] as String),
  location: json['location'] as String,
);

Map<String, dynamic> _$AttendanceValidationModelToJson(
  _AttendanceValidationModel instance,
) => <String, dynamic>{
  'employee': instance.employee,
  'type': instance.type,
  'timestamp': instance.timestamp.toIso8601String(),
  'location': instance.location,
};

_AttendanceRecordModel _$AttendanceRecordModelFromJson(
  Map<String, dynamic> json,
) => _AttendanceRecordModel(
  id: json['id'] as String,
  employeeId: json['employeeId'] as String,
  type: json['type'] as String,
  timestamp: DateTime.parse(json['timestamp'] as String),
  location: json['location'] as String,
);

Map<String, dynamic> _$AttendanceRecordModelToJson(
  _AttendanceRecordModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'employeeId': instance.employeeId,
  'type': instance.type,
  'timestamp': instance.timestamp.toIso8601String(),
  'location': instance.location,
};

_AttendanceStatusModel _$AttendanceStatusModelFromJson(
  Map<String, dynamic> json,
) => _AttendanceStatusModel(
  isCheckedIn: json['isCheckedIn'] as bool,
  lastCheckIn: json['lastCheckIn'] == null
      ? null
      : DateTime.parse(json['lastCheckIn'] as String),
  lastCheckOut: json['lastCheckOut'] == null
      ? null
      : DateTime.parse(json['lastCheckOut'] as String),
  todayDuration: (json['todayDuration'] as num).toInt(),
  currentStatus: json['currentStatus'] as String,
);

Map<String, dynamic> _$AttendanceStatusModelToJson(
  _AttendanceStatusModel instance,
) => <String, dynamic>{
  'isCheckedIn': instance.isCheckedIn,
  'lastCheckIn': ?instance.lastCheckIn?.toIso8601String(),
  'lastCheckOut': ?instance.lastCheckOut?.toIso8601String(),
  'todayDuration': instance.todayDuration,
  'currentStatus': instance.currentStatus,
};

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  id: json['id'] as String,
  email: json['email'] as String,
  role: json['role'] as String,
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'role': instance.role,
    };

_ShiftModel _$ShiftModelFromJson(Map<String, dynamic> json) => _ShiftModel(
  id: json['id'] as String,
  name: json['name'] as String,
  startTime: json['startTime'] as String,
  endTime: json['endTime'] as String,
);

Map<String, dynamic> _$ShiftModelToJson(_ShiftModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
    };

_EmployeeProfileModel _$EmployeeProfileModelFromJson(
  Map<String, dynamic> json,
) => _EmployeeProfileModel(
  id: json['id'] as String,
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  email: json['email'] as String,
  position: json['position'] as String,
  user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
  shift: json['shift'] == null
      ? null
      : ShiftModel.fromJson(json['shift'] as Map<String, dynamic>),
);

Map<String, dynamic> _$EmployeeProfileModelToJson(
  _EmployeeProfileModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'email': instance.email,
  'position': instance.position,
  'user': instance.user,
  'shift': ?instance.shift,
};

_AttendanceHistoryModel _$AttendanceHistoryModelFromJson(
  Map<String, dynamic> json,
) => _AttendanceHistoryModel(
  records: (json['records'] as List<dynamic>)
      .map((e) => AttendanceRecordModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  total: (json['total'] as num).toInt(),
  page: (json['page'] as num).toInt(),
  limit: (json['limit'] as num).toInt(),
);

Map<String, dynamic> _$AttendanceHistoryModelToJson(
  _AttendanceHistoryModel instance,
) => <String, dynamic>{
  'records': instance.records,
  'total': instance.total,
  'page': instance.page,
  'limit': instance.limit,
};

_LocationInfoModel _$LocationInfoModelFromJson(Map<String, dynamic> json) =>
    _LocationInfoModel(
      locationId: json['locationId'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      accuracy: (json['accuracy'] as num?)?.toDouble(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$LocationInfoModelToJson(_LocationInfoModel instance) =>
    <String, dynamic>{
      'locationId': ?instance.locationId,
      'latitude': ?instance.latitude,
      'longitude': ?instance.longitude,
      'accuracy': ?instance.accuracy,
      'name': ?instance.name,
    };

_DeviceInfoModel _$DeviceInfoModelFromJson(Map<String, dynamic> json) =>
    _DeviceInfoModel(
      name: json['name'] as String?,
      os: json['os'] as String?,
      browser: json['browser'] as String?,
      userAgent: json['userAgent'] as String?,
    );

Map<String, dynamic> _$DeviceInfoModelToJson(_DeviceInfoModel instance) =>
    <String, dynamic>{
      'name': ?instance.name,
      'os': ?instance.os,
      'browser': ?instance.browser,
      'userAgent': ?instance.userAgent,
    };
