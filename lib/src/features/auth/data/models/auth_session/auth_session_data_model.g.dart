// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_session_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthSessionDataModel _$AuthSessionDataModelFromJson(
  Map<String, dynamic> json,
) => _AuthSessionDataModel(
  user: AuthSessionUserModel.fromJson(json['user'] as Map<String, dynamic>),
  token: json['token'] as String,
);

Map<String, dynamic> _$AuthSessionDataModelToJson(
  _AuthSessionDataModel instance,
) => <String, dynamic>{'user': instance.user, 'token': instance.token};
