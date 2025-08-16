// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_employee_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ImportEmployeeModel _$ImportEmployeeModelFromJson(Map<String, dynamic> json) =>
    _ImportEmployeeModel(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      dni: json['dni'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      position: json['position'] as String,
      department: json['department'] as String,
      shiftName: json['shiftName'] as String,
    );

Map<String, dynamic> _$ImportEmployeeModelToJson(
  _ImportEmployeeModel instance,
) => <String, dynamic>{
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'dni': instance.dni,
  'email': instance.email,
  'phone': instance.phone,
  'position': instance.position,
  'department': instance.department,
  'shiftName': instance.shiftName,
};
