// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_code_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QrCodeResponseModel _$QrCodeResponseModelFromJson(Map<String, dynamic> json) =>
    _QrCodeResponseModel(
      success: json['success'] as bool,
      data: QrCodeDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QrCodeResponseModelToJson(
  _QrCodeResponseModel instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
