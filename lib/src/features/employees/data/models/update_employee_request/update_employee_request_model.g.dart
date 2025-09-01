// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_employee_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateEmployeeRequestModel _$UpdateEmployeeRequestModelFromJson(
  Map<String, dynamic> json,
) => _UpdateEmployeeRequestModel(
  firstName: json['firstName'] as String?,
  lastName: json['lastName'] as String?,
  phone: json['phone'] as String?,
  photoUrl: json['photoUrl'] as String?,
  position: json['position'] as String?,
  department: json['department'] as String?,
  shiftId: json['shiftId'] as String?,
);

Map<String, dynamic> _$UpdateEmployeeRequestModelToJson(
  _UpdateEmployeeRequestModel instance,
) => <String, dynamic>{
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'phone': instance.phone,
  'photoUrl': instance.photoUrl,
  'position': instance.position,
  'department': instance.department,
  'shiftId': instance.shiftId,
};
