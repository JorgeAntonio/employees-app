// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_session_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthSessionUserModel _$AuthSessionUserModelFromJson(
  Map<String, dynamic> json,
) => _AuthSessionUserModel(
  id: json['id'] as String,
  email: json['email'] as String,
  role: json['role'] as String,
  employee: AuthSessionEmployeeModel.fromJson(
    json['employee'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AuthSessionUserModelToJson(
  _AuthSessionUserModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'email': instance.email,
  'role': instance.role,
  'employee': instance.employee,
};
