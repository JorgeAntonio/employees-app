// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_employee_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateEmployeeRequestModel _$CreateEmployeeRequestModelFromJson(
  Map<String, dynamic> json,
) => _CreateEmployeeRequestModel(
  email: json['email'] as String,
  password: json['password'] as String,
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  dni: json['dni'] as String,
  phone: json['phone'] as String?,
  photoUrl: json['photoUrl'] as String?,
  position: json['position'] as String,
  department: json['department'] as String,
  shiftId: json['shiftId'] as String?,
);

Map<String, dynamic> _$CreateEmployeeRequestModelToJson(
  _CreateEmployeeRequestModel instance,
) => <String, dynamic>{
  'email': instance.email,
  'password': instance.password,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'dni': instance.dni,
  'phone': ?instance.phone,
  'photoUrl': ?instance.photoUrl,
  'position': instance.position,
  'department': instance.department,
  'shiftId': ?instance.shiftId,
};
