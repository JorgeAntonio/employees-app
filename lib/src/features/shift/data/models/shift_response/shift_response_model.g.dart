// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shift_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ShiftResponseModel _$ShiftResponseModelFromJson(Map<String, dynamic> json) =>
    _ShiftResponseModel(
      success: json['success'] as bool,
      data: json['data'] == null
          ? null
          : ShiftDataModel.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ShiftResponseModelToJson(_ShiftResponseModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };

_ShiftDataModel _$ShiftDataModelFromJson(Map<String, dynamic> json) =>
    _ShiftDataModel(
      shifts: (json['shifts'] as List<dynamic>)
          .map((e) => ShiftModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: PaginationInfoModel.fromJson(
        json['pagination'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$ShiftDataModelToJson(_ShiftDataModel instance) =>
    <String, dynamic>{
      'shifts': instance.shifts,
      'pagination': instance.pagination,
    };

_ShiftModel _$ShiftModelFromJson(Map<String, dynamic> json) => _ShiftModel(
  id: json['id'] as String,
  name: json['name'] as String,
  description: json['description'] as String,
  startTime: DateTime.parse(json['startTime'] as String),
  endTime: DateTime.parse(json['endTime'] as String),
  employeeCount: (json['employeeCount'] as num).toInt(),
);

Map<String, dynamic> _$ShiftModelToJson(_ShiftModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'employeeCount': instance.employeeCount,
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
