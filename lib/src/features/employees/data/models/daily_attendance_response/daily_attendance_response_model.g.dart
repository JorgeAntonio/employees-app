// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_attendance_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DailyAttendanceResponseModel _$DailyAttendanceResponseModelFromJson(
  Map<String, dynamic> json,
) => _DailyAttendanceResponseModel(
  success: json['success'] as bool,
  data: json['data'] == null
      ? null
      : DailyAttendanceDataModel.fromJson(json['data'] as Map<String, dynamic>),
  message: json['message'] as String?,
);

Map<String, dynamic> _$DailyAttendanceResponseModelToJson(
  _DailyAttendanceResponseModel instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'message': instance.message,
};

_DailyAttendanceDataModel _$DailyAttendanceDataModelFromJson(
  Map<String, dynamic> json,
) => _DailyAttendanceDataModel(
  date: json['date'] as String,
  employees: (json['employees'] as List<dynamic>)
      .map((e) => EmployeeAttendanceModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  stats: AttendanceStatsModel.fromJson(json['stats'] as Map<String, dynamic>),
  pagination: PaginationResponseModel.fromJson(
    json['pagination'] as Map<String, dynamic>,
  ),
  filters: AttendanceFiltersModel.fromJson(
    json['filters'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$DailyAttendanceDataModelToJson(
  _DailyAttendanceDataModel instance,
) => <String, dynamic>{
  'date': instance.date,
  'employees': instance.employees,
  'stats': instance.stats,
  'pagination': instance.pagination,
  'filters': instance.filters,
};

_EmployeeAttendanceModel _$EmployeeAttendanceModelFromJson(
  Map<String, dynamic> json,
) => _EmployeeAttendanceModel(
  id: json['id'] as String,
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  dni: json['dni'] as String,
  position: json['position'] as String,
  department: json['department'] as String,
  phone: json['phone'] as String?,
  photoUrl: json['photoUrl'] as String?,
  shift: json['shift'] == null
      ? null
      : ShiftModel.fromJson(json['shift'] as Map<String, dynamic>),
  user: AttendanceUserModel.fromJson(json['user'] as Map<String, dynamic>),
  attendances: (json['attendances'] as List<dynamic>?)
      ?.map((e) => AttendanceRecordModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  attendanceStatus: json['attendanceStatus'] as String,
  statusLabel: json['statusLabel'] as String,
);

Map<String, dynamic> _$EmployeeAttendanceModelToJson(
  _EmployeeAttendanceModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'dni': instance.dni,
  'position': instance.position,
  'department': instance.department,
  'phone': instance.phone,
  'photoUrl': instance.photoUrl,
  'shift': instance.shift,
  'user': instance.user,
  'attendances': instance.attendances,
  'attendanceStatus': instance.attendanceStatus,
  'statusLabel': instance.statusLabel,
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

_AttendanceUserModel _$AttendanceUserModelFromJson(Map<String, dynamic> json) =>
    _AttendanceUserModel(
      id: json['id'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$AttendanceUserModelToJson(
  _AttendanceUserModel instance,
) => <String, dynamic>{'id': instance.id, 'email': instance.email};

_AttendanceRecordModel _$AttendanceRecordModelFromJson(
  Map<String, dynamic> json,
) => _AttendanceRecordModel(
  id: json['id'] as String,
  checkInTime: json['checkInTime'] == null
      ? null
      : DateTime.parse(json['checkInTime'] as String),
  checkOutTime: json['checkOutTime'] == null
      ? null
      : DateTime.parse(json['checkOutTime'] as String),
  durationMins: (json['durationMins'] as num?)?.toInt(),
  status: json['status'] as String,
  checkInLocation: json['checkInLocation'],
  checkOutLocation: json['checkOutLocation'],
  device: json['device'],
);

Map<String, dynamic> _$AttendanceRecordModelToJson(
  _AttendanceRecordModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'checkInTime': instance.checkInTime?.toIso8601String(),
  'checkOutTime': instance.checkOutTime?.toIso8601String(),
  'durationMins': instance.durationMins,
  'status': instance.status,
  'checkInLocation': instance.checkInLocation,
  'checkOutLocation': instance.checkOutLocation,
  'device': instance.device,
};

_AttendanceStatsModel _$AttendanceStatsModelFromJson(
  Map<String, dynamic> json,
) => _AttendanceStatsModel(
  total: (json['total'] as num).toInt(),
  present: (json['present'] as num).toInt(),
  absent: (json['absent'] as num).toInt(),
  late: (json['late'] as num).toInt(),
  active: (json['active'] as num).toInt(),
  completed: (json['completed'] as num).toInt(),
);

Map<String, dynamic> _$AttendanceStatsModelToJson(
  _AttendanceStatsModel instance,
) => <String, dynamic>{
  'total': instance.total,
  'present': instance.present,
  'absent': instance.absent,
  'late': instance.late,
  'active': instance.active,
  'completed': instance.completed,
};

_AttendanceFiltersModel _$AttendanceFiltersModelFromJson(
  Map<String, dynamic> json,
) => _AttendanceFiltersModel(
  department: json['department'] as String?,
  position: json['position'] as String?,
);

Map<String, dynamic> _$AttendanceFiltersModelToJson(
  _AttendanceFiltersModel instance,
) => <String, dynamic>{
  'department': instance.department,
  'position': instance.position,
};
