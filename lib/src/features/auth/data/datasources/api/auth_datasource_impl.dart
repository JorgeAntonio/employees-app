import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/auth/data/datasources/local/auth_local_datasource_impl.dart';
import 'package:attendance_app/src/features/auth/data/models/auth_session/auth_session_model.dart';
import 'package:attendance_app/src/features/auth/domain/dartasource/api/auth_datasource.dart';
import 'package:attendance_app/src/features/auth/domain/entities/auth_session.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

class AuthDataSourceImpl implements AuthDataSource {
  final Dio _dio;

  AuthDataSourceImpl(this._dio);

  @override
  FutureEither<AuthSession> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _dio.post(
        '/auth/login/',
        data: {'email': email, 'password': password},
      );

      if (response.statusCode == 200) {
        final authSessionModel = AuthSessionModel.fromJson(response.data);
        return right(authSessionModel.toDomain());
      } else {
        return left(const ServerFailure('Error en la respuesta del servidor'));
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout ||
          e.type == DioExceptionType.sendTimeout) {
        return left(const NetworkFailure('Error de conexión'));
      } else if (e.response?.statusCode == 401 ||
          e.response?.statusCode == 400) {
        // Extraer mensaje de error de la API (tanto 401 como 400 pueden ser errores de auth)
        final errorMessage = _extractErrorMessage(e.response?.data);
        return left(AuthFailure(errorMessage));
      } else if (e.response?.statusCode == 404) {
        return left(const ServerFailure('Servicio no encontrado'));
      } else {
        // Extraer mensaje de error de la API
        final errorMessage = _extractErrorMessage(e.response?.data);
        return left(ServerFailure(errorMessage));
      }
    } catch (e) {
      return left(ServerFailure('Error inesperado: $e'));
    }
  }

  /// Extrae el mensaje de error del response de la API
  String _extractErrorMessage(dynamic responseData) {
    if (responseData == null) {
      return 'Error desconocido';
    }

    try {
      if (responseData is Map<String, dynamic>) {
        // Si la API devuelve {success: false, message: "..."}
        if (responseData.containsKey('message')) {
          final message = responseData['message'] as String;
          return message;
        }

        // Si la API devuelve {error: "..."}
        if (responseData.containsKey('error')) {
          final error = responseData['error'] as String;
          return error;
        }

        // Si la API devuelve {detail: "..."}
        if (responseData.containsKey('detail')) {
          final detail = responseData['detail'] as String;
          return detail;
        }
      }

      // Si es un string directo
      if (responseData is String) {
        return responseData;
      }

      // Fallback
      return 'Error del servidor';
    } catch (e) {
      return 'Error al procesar la respuesta del servidor';
    }
  }

  @override
  FutureEither<void> signOut() async {
    try {
      // clear local storage
      await AuthLocalDataSourceImpl().clearAuthSession();
      return right(null);
    } catch (e) {
      return left(ServerFailure('Error inesperado: $e'));
    }
  }
}
