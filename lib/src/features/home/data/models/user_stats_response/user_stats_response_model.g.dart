// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_stats_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserStatsResponseModel _$UserStatsResponseModelFromJson(
  Map<String, dynamic> json,
) => _UserStatsResponseModel(
  success: json['success'] as bool,
  data: json['data'] == null
      ? null
      : UserStatsDataModel.fromJson(json['data'] as Map<String, dynamic>),
  message: json['message'] as String?,
);

Map<String, dynamic> _$UserStatsResponseModelToJson(
  _UserStatsResponseModel instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'message': instance.message,
};

_UserStatsDataModel _$UserStatsDataModelFromJson(Map<String, dynamic> json) =>
    _UserStatsDataModel(
      period: PeriodModel.fromJson(json['period'] as Map<String, dynamic>),
      employee: json['employee'] == null
          ? null
          : EmployeeInfoModel.fromJson(
              json['employee'] as Map<String, dynamic>,
            ),
      statistics: StatisticsModel.fromJson(
        json['statistics'] as Map<String, dynamic>,
      ),
      recentAttendances: (json['recentAttendances'] as List<dynamic>)
          .map((e) => RecentAttendanceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserStatsDataModelToJson(_UserStatsDataModel instance) =>
    <String, dynamic>{
      'period': instance.period,
      'employee': instance.employee,
      'statistics': instance.statistics,
      'recentAttendances': instance.recentAttendances,
    };

_PeriodModel _$PeriodModelFromJson(Map<String, dynamic> json) => _PeriodModel(
  startDate: json['startDate'] as String,
  endDate: json['endDate'] as String,
  days: (json['days'] as num).toInt(),
);

Map<String, dynamic> _$PeriodModelToJson(_PeriodModel instance) =>
    <String, dynamic>{
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'days': instance.days,
    };

_EmployeeInfoModel _$EmployeeInfoModelFromJson(Map<String, dynamic> json) =>
    _EmployeeInfoModel(
      id: json['id'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      department: json['department'] as String,
      position: json['position'] as String,
      shift: json['shift'] as String?,
    );

Map<String, dynamic> _$EmployeeInfoModelToJson(_EmployeeInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'department': instance.department,
      'position': instance.position,
      'shift': instance.shift,
    };

_StatisticsModel _$StatisticsModelFromJson(Map<String, dynamic> json) =>
    _StatisticsModel(
      totalDays: (json['totalDays'] as num).toInt(),
      presences: (json['presences'] as num).toInt(),
      absences: (json['absences'] as num).toInt(),
      lateArrivals: (json['lateArrivals'] as num).toInt(),
      justified: (json['justified'] as num).toInt(),
      punctualityRate: (json['punctualityRate'] as num).toDouble(),
      averageHours: (json['averageHours'] as num).toDouble(),
      attendanceRate: (json['attendanceRate'] as num).toDouble(),
    );

Map<String, dynamic> _$StatisticsModelToJson(_StatisticsModel instance) =>
    <String, dynamic>{
      'totalDays': instance.totalDays,
      'presences': instance.presences,
      'absences': instance.absences,
      'lateArrivals': instance.lateArrivals,
      'justified': instance.justified,
      'punctualityRate': instance.punctualityRate,
      'averageHours': instance.averageHours,
      'attendanceRate': instance.attendanceRate,
    };

_RecentAttendanceModel _$RecentAttendanceModelFromJson(
  Map<String, dynamic> json,
) => _RecentAttendanceModel(
  date: DateTime.parse(json['date'] as String),
  checkInTime: DateTime.parse(json['checkInTime'] as String),
  checkOutTime: json['checkOutTime'] == null
      ? null
      : DateTime.parse(json['checkOutTime'] as String),
  status: json['status'] as String,
  durationMins: (json['durationMins'] as num?)?.toInt(),
);

Map<String, dynamic> _$RecentAttendanceModelToJson(
  _RecentAttendanceModel instance,
) => <String, dynamic>{
  'date': instance.date.toIso8601String(),
  'checkInTime': instance.checkInTime.toIso8601String(),
  'checkOutTime': instance.checkOutTime?.toIso8601String(),
  'status': instance.status,
  'durationMins': instance.durationMins,
};
