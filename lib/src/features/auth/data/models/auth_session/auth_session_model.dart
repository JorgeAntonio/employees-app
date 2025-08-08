import 'package:attendance_app/src/features/auth/domain/entities/auth_session.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'auth_session_data_model.dart';

part 'auth_session_model.freezed.dart';
part 'auth_session_model.g.dart';

@freezed
abstract class AuthSessionModel with _$AuthSessionModel {
  const factory AuthSessionModel({
    required bool success,
    required AuthSessionDataModel data,
  }) = _AuthSessionModel;

  factory AuthSessionModel.fromJson(Map<String, dynamic> json) =>
      _$AuthSessionModelFromJson(json);
}

extension AuthSessionModelX on AuthSessionModel {
  AuthSession toDomain() =>
      AuthSession(success: success, data: data.toDomain());
}
