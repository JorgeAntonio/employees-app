// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_employee_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateEmployeeResponseModel _$CreateEmployeeResponseModelFromJson(
  Map<String, dynamic> json,
) => _CreateEmployeeResponseModel(
  success: json['success'] as bool,
  data: json['data'] == null
      ? null
      : CreateEmployeeDataModel.fromJson(json['data'] as Map<String, dynamic>),
  message: json['message'] as String?,
);

Map<String, dynamic> _$CreateEmployeeResponseModelToJson(
  _CreateEmployeeResponseModel instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'message': instance.message,
};

_CreateEmployeeDataModel _$CreateEmployeeDataModelFromJson(
  Map<String, dynamic> json,
) => _CreateEmployeeDataModel(
  user: CreatedUserModel.fromJson(json['user'] as Map<String, dynamic>),
  employee: EmployeeModel.fromJson(json['employee'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CreateEmployeeDataModelToJson(
  _CreateEmployeeDataModel instance,
) => <String, dynamic>{'user': instance.user, 'employee': instance.employee};

_CreatedUserModel _$CreatedUserModelFromJson(Map<String, dynamic> json) =>
    _CreatedUserModel(
      id: json['id'] as String,
      email: json['email'] as String,
      role: json['role'] as String,
    );

Map<String, dynamic> _$CreatedUserModelToJson(_CreatedUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'role': instance.role,
    };
