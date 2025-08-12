// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_code_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QrCodeDataModel _$QrCodeDataModelFromJson(Map<String, dynamic> json) =>
    _QrCodeDataModel(
      qrCode: json['qrCode'] as String,
      manualCode: json['manualCode'] as String,
      expiresAt: DateTime.parse(json['expiresAt'] as String),
      type: json['type'] as String,
    );

Map<String, dynamic> _$QrCodeDataModelToJson(_QrCodeDataModel instance) =>
    <String, dynamic>{
      'qrCode': instance.qrCode,
      'manualCode': instance.manualCode,
      'expiresAt': instance.expiresAt.toIso8601String(),
      'type': instance.type,
    };
