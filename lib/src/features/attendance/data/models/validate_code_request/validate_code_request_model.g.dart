// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_code_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ValidateCodeRequestModel _$ValidateCodeRequestModelFromJson(
  Map<String, dynamic> json,
) => _ValidateCodeRequestModel(
  code: json['code'] as String,
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
  accuracy: (json['accuracy'] as num?)?.toDouble(),
);

Map<String, dynamic> _$ValidateCodeRequestModelToJson(
  _ValidateCodeRequestModel instance,
) => <String, dynamic>{
  'code': instance.code,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'accuracy': instance.accuracy,
};
