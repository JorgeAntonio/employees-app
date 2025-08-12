// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_history_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AttendanceHistoryResponseModel _$AttendanceHistoryResponseModelFromJson(
  Map<String, dynamic> json,
) => _AttendanceHistoryResponseModel(
  success: json['success'] as bool,
  data: json['data'] == null
      ? null
      : AttendanceHistoryDataModel.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  message: json['message'] as String?,
);

Map<String, dynamic> _$AttendanceHistoryResponseModelToJson(
  _AttendanceHistoryResponseModel instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'message': instance.message,
};

_AttendanceHistoryDataModel _$AttendanceHistoryDataModelFromJson(
  Map<String, dynamic> json,
) => _AttendanceHistoryDataModel(
  attendances: (json['attendances'] as List<dynamic>)
      .map(
        (e) => AttendanceHistoryItemModel.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  pagination: PaginationInfoModel.fromJson(
    json['pagination'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AttendanceHistoryDataModelToJson(
  _AttendanceHistoryDataModel instance,
) => <String, dynamic>{
  'attendances': instance.attendances,
  'pagination': instance.pagination,
};

_AttendanceHistoryItemModel _$AttendanceHistoryItemModelFromJson(
  Map<String, dynamic> json,
) => _AttendanceHistoryItemModel(
  id: json['id'] as String,
  employeeId: json['employeeId'] as String,
  date: DateTime.parse(json['date'] as String),
  checkInTime: json['checkInTime'] == null
      ? null
      : DateTime.parse(json['checkInTime'] as String),
  checkOutTime: json['checkOutTime'] == null
      ? null
      : DateTime.parse(json['checkOutTime'] as String),
  durationMins: (json['durationMins'] as num).toInt(),
  status: json['status'] as String,
  checkInLocationId: json['checkInLocationId'] as String?,
  checkOutLocationId: json['checkOutLocationId'] as String?,
  deviceId: json['deviceId'] as String?,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  employee: AttendanceHistoryEmployeeModel.fromJson(
    json['employee'] as Map<String, dynamic>,
  ),
  checkInLocation: json['checkInLocation'] == null
      ? null
      : AttendanceHistoryLocationModel.fromJson(
          json['checkInLocation'] as Map<String, dynamic>,
        ),
  checkOutLocation: json['checkOutLocation'] == null
      ? null
      : AttendanceHistoryLocationModel.fromJson(
          json['checkOutLocation'] as Map<String, dynamic>,
        ),
  device: json['device'] == null
      ? null
      : AttendanceHistoryDeviceModel.fromJson(
          json['device'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$AttendanceHistoryItemModelToJson(
  _AttendanceHistoryItemModel instance,
) => <String, dynamic>{
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

_AttendanceHistoryEmployeeModel _$AttendanceHistoryEmployeeModelFromJson(
  Map<String, dynamic> json,
) => _AttendanceHistoryEmployeeModel(
  id: json['id'] as String,
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  dni: json['dni'] as String,
  position: json['position'] as String,
  department: json['department'] as String,
);

Map<String, dynamic> _$AttendanceHistoryEmployeeModelToJson(
  _AttendanceHistoryEmployeeModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'dni': instance.dni,
  'position': instance.position,
  'department': instance.department,
};

_AttendanceHistoryLocationModel _$AttendanceHistoryLocationModelFromJson(
  Map<String, dynamic> json,
) => _AttendanceHistoryLocationModel(
  id: json['id'] as String,
  name: json['name'] as String,
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
  accuracy: (json['accuracy'] as num?)?.toDouble(),
);

Map<String, dynamic> _$AttendanceHistoryLocationModelToJson(
  _AttendanceHistoryLocationModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'accuracy': instance.accuracy,
};

_AttendanceHistoryDeviceModel _$AttendanceHistoryDeviceModelFromJson(
  Map<String, dynamic> json,
) => _AttendanceHistoryDeviceModel(
  id: json['id'] as String,
  name: json['name'] as String,
  os: json['os'] as String,
  browser: json['browser'] as String,
  userAgent: json['userAgent'] as String,
);

Map<String, dynamic> _$AttendanceHistoryDeviceModelToJson(
  _AttendanceHistoryDeviceModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'os': instance.os,
  'browser': instance.browser,
  'userAgent': instance.userAgent,
};

_PaginationInfoModel _$PaginationInfoModelFromJson(Map<String, dynamic> json) =>
    _PaginationInfoModel(
      page: (json['page'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
      total: (json['total'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
    );

Map<String, dynamic> _$PaginationInfoModelToJson(
  _PaginationInfoModel instance,
) => <String, dynamic>{
  'page': instance.page,
  'limit': instance.limit,
  'total': instance.total,
  'totalPages': instance.totalPages,
};
