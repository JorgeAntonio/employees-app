// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_code_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EmployeeDataModel _$EmployeeDataModelFromJson(Map<String, dynamic> json) =>
    _EmployeeDataModel(
      id: json['id'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      dni: json['dni'] as String,
      position: json['position'] as String,
      department: json['department'] as String,
    );

Map<String, dynamic> _$EmployeeDataModelToJson(_EmployeeDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'dni': instance.dni,
      'position': instance.position,
      'department': instance.department,
    };

_QrCodeDataModel _$QrCodeDataModelFromJson(Map<String, dynamic> json) =>
    _QrCodeDataModel(
      qrCode: json['qrCode'] as String,
      manualCode: json['manualCode'] as String,
      employeeData: EmployeeDataModel.fromJson(
        json['employeeData'] as Map<String, dynamic>,
      ),
      expiresAt: DateTime.parse(json['expiresAt'] as String),
    );

Map<String, dynamic> _$QrCodeDataModelToJson(_QrCodeDataModel instance) =>
    <String, dynamic>{
      'qrCode': instance.qrCode,
      'manualCode': instance.manualCode,
      'employeeData': instance.employeeData,
      'expiresAt': instance.expiresAt.toIso8601String(),
    };
