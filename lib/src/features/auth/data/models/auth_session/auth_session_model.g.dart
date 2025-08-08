// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_session_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthSessionModel _$AuthSessionModelFromJson(Map<String, dynamic> json) =>
    _AuthSessionModel(
      success: json['success'] as bool,
      data: AuthSessionDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthSessionModelToJson(_AuthSessionModel instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};
