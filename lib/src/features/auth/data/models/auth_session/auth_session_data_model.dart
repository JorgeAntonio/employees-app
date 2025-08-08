import 'package:attendance_app/src/features/auth/domain/entities/auth_session.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'auth_session_user_model.dart';

part 'auth_session_data_model.freezed.dart';
part 'auth_session_data_model.g.dart';

@freezed
abstract class AuthSessionDataModel with _$AuthSessionDataModel {
  const factory AuthSessionDataModel({
    required AuthSessionUserModel user,
    required String token,
  }) = _AuthSessionDataModel;

  factory AuthSessionDataModel.fromJson(Map<String, dynamic> json) =>
      _$AuthSessionDataModelFromJson(json);
}

extension AuthSessionDataModelX on AuthSessionDataModel {
  AuthSessionData toDomain() =>
      AuthSessionData(user: user.toDomain(), token: token);
}
