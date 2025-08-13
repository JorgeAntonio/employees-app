// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_attendance_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ConfirmAttendanceResponseModel _$ConfirmAttendanceResponseModelFromJson(
  Map<String, dynamic> json,
) => _ConfirmAttendanceResponseModel(
  success: json['success'] as bool,
  data: json['data'] == null
      ? null
      : ConfirmAttendanceDataModel.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  message: json['message'] as String?,
);

Map<String, dynamic> _$ConfirmAttendanceResponseModelToJson(
  _ConfirmAttendanceResponseModel instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'message': instance.message,
};

_ConfirmAttendanceDataModel _$ConfirmAttendanceDataModelFromJson(
  Map<String, dynamic> json,
) => _ConfirmAttendanceDataModel(
  message: json['message'] as String,
  attendance: AttendanceModel.fromJson(
    json['attendance'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$ConfirmAttendanceDataModelToJson(
  _ConfirmAttendanceDataModel instance,
) => <String, dynamic>{
  'message': instance.message,
  'attendance': instance.attendance,
};

_AttendanceModel _$AttendanceModelFromJson(Map<String, dynamic> json) =>
    _AttendanceModel(
      id: json['id'] as String,
      employeeId: json['employeeId'] as String,
      date: DateTime.parse(json['date'] as String),
      checkInTime: json['checkInTime'] == null
          ? null
          : DateTime.parse(json['checkInTime'] as String),
      checkOutTime: json['checkOutTime'] == null
          ? null
          : DateTime.parse(json['checkOutTime'] as String),
      durationMins: (json['durationMins'] as num?)?.toInt(),
      status: json['status'] as String,
      checkInLocationId: json['checkInLocationId'] as String?,
      checkOutLocationId: json['checkOutLocationId'] as String?,
      deviceId: json['deviceId'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      employee: AttendanceEmployeeModel.fromJson(
        json['employee'] as Map<String, dynamic>,
      ),
      checkInLocation: json['checkInLocation'] == null
          ? null
          : AttendanceLocationModel.fromJson(
              json['checkInLocation'] as Map<String, dynamic>,
            ),
      checkOutLocation: json['checkOutLocation'] == null
          ? null
          : AttendanceLocationModel.fromJson(
              json['checkOutLocation'] as Map<String, dynamic>,
            ),
      device: json['device'] == null
          ? null
          : AttendanceDeviceModel.fromJson(
              json['device'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$AttendanceModelToJson(_AttendanceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'employeeId': instance.employeeId,
      'date': instance.date.toIso8601String(),
      'checkInTime': instance.checkInTime?.toIso8601String(),
      'checkOutTime': instance.checkOutTime?.toIso8601String(),
      'durationMins': instance.durationMins,
      'status': instance.status,
      'checkInLocationId': instance.checkInLocationId,
      'checkOutLocationId': instance.checkOutLocationId,
      'deviceId': instance.deviceId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'employee': instance.employee,
      'checkInLocation': instance.checkInLocation,
      'checkOutLocation': instance.checkOutLocation,
      'device': instance.device,
    };

_AttendanceEmployeeModel _$AttendanceEmployeeModelFromJson(
  Map<String, dynamic> json,
) => _AttendanceEmployeeModel(
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  dni: json['dni'] as String,
);

Map<String, dynamic> _$AttendanceEmployeeModelToJson(
  _AttendanceEmployeeModel instance,
) => <String, dynamic>{
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'dni': instance.dni,
};

_AttendanceLocationModel _$AttendanceLocationModelFromJson(
  Map<String, dynamic> json,
) => _AttendanceLocationModel(
  id: json['id'] as String,
  name: json['name'] as String,
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
  accuracy: (json['accuracy'] as num?)?.toDouble(),
);

Map<String, dynamic> _$AttendanceLocationModelToJson(
  _AttendanceLocationModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'accuracy': instance.accuracy,
};

_AttendanceDeviceModel _$AttendanceDeviceModelFromJson(
  Map<String, dynamic> json,
) => _AttendanceDeviceModel(
  id: json['id'] as String,
  name: json['name'] as String,
  os: json['os'] as String,
  browser: json['browser'] as String,
  userAgent: json['userAgent'] as String,
);

Map<String, dynamic> _$AttendanceDeviceModelToJson(
  _AttendanceDeviceModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'os': instance.os,
  'browser': instance.browser,
  'userAgent': instance.userAgent,
};
