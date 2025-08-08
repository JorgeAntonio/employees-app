// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_session_employee_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthSessionEmployeeModel _$AuthSessionEmployeeModelFromJson(
  Map<String, dynamic> json,
) => _AuthSessionEmployeeModel(
  id: json['id'] as String,
  userId: json['userId'] as String,
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  dni: json['dni'] as String,
  phone: json['phone'] as String?,
  photoUrl: json['photoUrl'] as String?,
  position: json['position'] as String,
  department: json['department'] as String,
  shiftId: json['shiftId'] as String?,
);

Map<String, dynamic> _$AuthSessionEmployeeModelToJson(
  _AuthSessionEmployeeModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'dni': instance.dni,
  'phone': instance.phone,
  'photoUrl': instance.photoUrl,
  'position': instance.position,
  'department': instance.department,
  'shiftId': instance.shiftId,
};
