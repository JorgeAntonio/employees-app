import 'package:attendance_app/src/features/auth/domain/entities/auth_session.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'auth_session_employee_model.dart';

part 'auth_session_user_model.freezed.dart';
part 'auth_session_user_model.g.dart';

@freezed
abstract class AuthSessionUserModel with _$AuthSessionUserModel {
  const factory AuthSessionUserModel({
    required String id,
    required String email,
    required String role,
    required AuthSessionEmployeeModel employee,
  }) = _AuthSessionUserModel;

  factory AuthSessionUserModel.fromJson(Map<String, dynamic> json) =>
      _$AuthSessionUserModelFromJson(json);
}

extension AuthSessionUserModelX on AuthSessionUserModel {
  AuthSessionUser toDomain() =>
      AuthSessionUser(id, email, role, employee.toDomain());
}
