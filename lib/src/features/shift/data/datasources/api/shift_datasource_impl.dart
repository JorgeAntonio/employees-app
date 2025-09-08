import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/auth/data/datasources/local/auth_local_datasource.dart';
import 'package:attendance_app/src/features/shift/data/models/shift_response/shift_response_model.dart';
import 'package:attendance_app/src/features/shift/domain/datasources/api/shift_datasource.dart';
import 'package:attendance_app/src/features/shift/domain/entities/shift.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

class ShiftDataSourceImpl implements ShiftDataSource {
  final Dio _dio;
  final AuthLocalDataSource _authLocalDataSource;

  ShiftDataSourceImpl(this._dio, this._authLocalDataSource);

  // Constructor con Dio básico sin interceptores para debugging
  ShiftDataSourceImpl.withBasicDio(this._authLocalDataSource)
    : _dio = Dio(
        BaseOptions(
          baseUrl: ApiServiceVariables.userService,
          connectTimeout: const Duration(seconds: 30),
          receiveTimeout: const Duration(seconds: 30),
          sendTimeout: const Duration(seconds: 30),
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
        ),
      );

  @override
  FutureEither<ShiftData> getShifts({
    required int page,
    required int limit,
  }) async {
    try {
      // Obtener token de autenticación
      final tokenResult = await _authLocalDataSource.getToken();
      return tokenResult.fold(
        (failure) => left(failure),
        (token) async {
          if (token == null) {
            return left(
              const AuthFailure('Token de autenticación no encontrado'),
            );
          }

          final response = await _dio.get(
            '/shifts',
            queryParameters: {'page': page, 'limit': limit},
            options: Options(
              headers: {'Authorization': 'Bearer $token'},
              sendTimeout: const Duration(seconds: 10),
              receiveTimeout: const Duration(seconds: 10),
            ),
          );

          if (response.statusCode == 200) {
            try {
              final shiftResponseModel = ShiftResponseModel.fromJson(
                response.data,
              );

              // Verificar si la respuesta indica éxito
              if (shiftResponseModel.success) {
                return right(shiftResponseModel.toDomain().data);
              } else {
                return left(
                  ServerFailure(
                    shiftResponseModel.message ?? 'Error al obtener turnos',
                  ),
                );
              }
            } catch (deserializationError) {
              return left(
                ServerFailure(
                  'Error al procesar respuesta del servidor: $deserializationError',
                ),
              );
            }
          } else {
            return left(
              ServerFailure('Error del servidor: ${response.statusCode}'),
            );
          }
        },
      );
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        return left(const AuthFailure('Token de autenticación inválido'));
      }
      return left(
        ServerFailure(
          e.response?.data?['message'] ?? e.message ?? 'Error de conexión',
        ),
      );
    } catch (e) {
      return left(ServerFailure('Error inesperado: $e'));
    }
  }
}
