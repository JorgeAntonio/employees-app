import 'dart:convert';

import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/auth/data/models/auth_session/auth_session_data_model.dart';
import 'package:attendance_app/src/features/auth/data/models/auth_session/auth_session_employee_model.dart';
import 'package:attendance_app/src/features/auth/data/models/auth_session/auth_session_model.dart';
import 'package:attendance_app/src/features/auth/data/models/auth_session/auth_session_user_model.dart';
import 'package:attendance_app/src/features/auth/domain/entities/auth_session.dart';
import 'package:fpdart/fpdart.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'auth_local_datasource.dart';

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  static const String _authSessionKey = 'auth_session';
  static const String _tokenKey = 'auth_token';

  @override
  FutureEither<void> saveAuthSession(AuthSession authSession) async {
    try {
      final prefs = await SharedPreferences.getInstance();

      // Convert to model for JSON serialization
      final authSessionModel = AuthSessionModel(
        success: authSession.success,
        data: AuthSessionDataModel(
          user: AuthSessionUserModel(
            id: authSession.data.user.id,
            email: authSession.data.user.email,
            role: authSession.data.user.role,
            employee: AuthSessionEmployeeModel(
              id: authSession.data.user.employee.id,
              userId: authSession.data.user.employee.userId,
              firstName: authSession.data.user.employee.firstName,
              lastName: authSession.data.user.employee.lastName,
              dni: authSession.data.user.employee.dni,
              phone: authSession.data.user.employee.phone,
              photoUrl: authSession.data.user.employee.photoUrl,
              position: authSession.data.user.employee.position,
              department: authSession.data.user.employee.department,
              shiftId: authSession.data.user.employee.shiftId,
            ),
          ),
          token: authSession.data.token,
        ),
      );

      final authSessionJson = jsonEncode(authSessionModel.toJson());
      await prefs.setString(_authSessionKey, authSessionJson);
      await prefs.setString(_tokenKey, authSession.data.token);

      return right(null);
    } catch (e) {
      return left(ServerFailure('Error al guardar la sesión: $e'));
    }
  }

  @override
  FutureEither<AuthSession?> getAuthSession() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final authSessionJson = prefs.getString(_authSessionKey);

      if (authSessionJson == null) {
        return right(null);
      }

      final authSessionMap =
          jsonDecode(authSessionJson) as Map<String, dynamic>;
      final authSessionModel = AuthSessionModel.fromJson(authSessionMap);

      return right(authSessionModel.toDomain());
    } catch (e) {
      return left(ServerFailure('Error al obtener la sesión: $e'));
    }
  }

  @override
  FutureEither<void> clearAuthSession() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(_authSessionKey);
      await prefs.remove(_tokenKey);

      return right(null);
    } catch (e) {
      return left(ServerFailure('Error al limpiar la sesión: $e'));
    }
  }

  @override
  FutureEither<String?> getToken() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString(_tokenKey);

      return right(token);
    } catch (e) {
      return left(ServerFailure('Error al obtener el token: $e'));
    }
  }
}
