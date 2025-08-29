import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/auth/data/datasources/local/auth_local_datasource.dart';
import 'package:attendance_app/src/features/home/data/models/user_stats_response/user_stats_response_model.dart';
import 'package:attendance_app/src/features/home/domain/datasources/api/home_datasource.dart';
import 'package:attendance_app/src/features/home/domain/entities/user_stats_entity.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

class HomeDataSourceImpl implements HomeDataSource {
  final Dio _dio;
  final AuthLocalDataSource _authLocalDataSource;

  HomeDataSourceImpl(this._dio, this._authLocalDataSource);

  @override
  FutureEither<UserStatsEntityResponse> getUserStats() async {
    try {
      // Obtener token de autenticación
      final tokenResult = await _authLocalDataSource.getToken();
      return tokenResult.fold((failure) => left(failure), (token) async {
        if (token == null) {
          return left(
            const AuthFailure('Token de autenticación no encontrado'),
          );
        }

        final response = await _dio.get(
          '/attendance/my-stats',
          options: Options(headers: {'Authorization': 'Bearer $token'}),
        );

        if (response.statusCode == 200) {
          final userStatsResponseModel = UserStatsResponseModel.fromJson(
            response.data,
          );

          // Verificar si la respuesta indica éxito
          if (userStatsResponseModel.success) {
            return right(userStatsResponseModel.toDomain());
          } else {
            return left(
              ServerFailure(
                userStatsResponseModel.message ?? 'Error del servidor',
              ),
            );
          }
        } else {
          return left(
            ServerFailure('Error del servidor: ${response.statusCode}'),
          );
        }
      });
    } on DioException catch (e) {
      return left(ServerFailure(e.message ?? 'Error de conexión'));
    } catch (e) {
      return left(ServerFailure('Error inesperado: $e'));
    }
  }
}
