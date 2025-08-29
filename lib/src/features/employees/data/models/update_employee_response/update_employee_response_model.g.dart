// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_employee_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateEmployeeResponseModel _$UpdateEmployeeResponseModelFromJson(
  Map<String, dynamic> json,
) => _UpdateEmployeeResponseModel(
  success: json['success'] as bool,
  data: json['data'] == null
      ? null
      : EmployeeModel.fromJson(json['data'] as Map<String, dynamic>),
  message: json['message'] as String?,
);

Map<String, dynamic> _$UpdateEmployeeResponseModelToJson(
  _UpdateEmployeeResponseModel instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'message': instance.message,
};
