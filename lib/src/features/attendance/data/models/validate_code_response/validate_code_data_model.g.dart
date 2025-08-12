// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_code_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ValidateCodeDataModel _$ValidateCodeDataModelFromJson(
  Map<String, dynamic> json,
) => _ValidateCodeDataModel(
  employee: EmployeeModel.fromJson(json['employee'] as Map<String, dynamic>),
  action: json['action'] as String,
  timestamp: DateTime.parse(json['timestamp'] as String),
);

Map<String, dynamic> _$ValidateCodeDataModelToJson(
  _ValidateCodeDataModel instance,
) => <String, dynamic>{
  'employee': instance.employee,
  'action': instance.action,
  'timestamp': instance.timestamp.toIso8601String(),
};
