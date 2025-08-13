// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_code_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ValidateCodeResponseModel _$ValidateCodeResponseModelFromJson(
  Map<String, dynamic> json,
) => _ValidateCodeResponseModel(
  success: json['success'] as bool,
  data: json['data'] == null
      ? null
      : ValidateCodeDataModel.fromJson(json['data'] as Map<String, dynamic>),
  message: json['message'] as String?,
);

Map<String, dynamic> _$ValidateCodeResponseModelToJson(
  _ValidateCodeResponseModel instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'message': instance.message,
};
