import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/attendance/data/models/attendance_history_response/attendance_history_response_model.dart';
import 'package:attendance_app/src/features/attendance/data/models/confirm_attendance_request_model.dart';
import 'package:attendance_app/src/features/attendance/data/models/confirm_attendance_response_model.dart';
import 'package:attendance_app/src/features/attendance/data/models/qr_code_response/qr_code_response_model.dart';
import 'package:attendance_app/src/features/attendance/data/models/validate_code_request/validate_code_request_model.dart';
import 'package:attendance_app/src/features/attendance/data/models/validate_code_response/validate_code_response_model.dart';
import 'package:attendance_app/src/features/attendance/domain/datasources/api/attendance_datasource.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/attendance_history_request.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/attendance_history_response.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/confirm_attendance_request.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/confirm_attendance_response.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/qr_code_response.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/validate_code_request.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/validate_code_response.dart';
import 'package:attendance_app/src/features/auth/data/datasources/local/auth_local_datasource.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

class AttendanceDataSourceImpl implements AttendanceDataSource {
  final Dio _dio;
  final AuthLocalDataSource _authLocalDataSource;

  AttendanceDataSourceImpl(this._dio, this._authLocalDataSource);

  @override
  FutureEither<QrCodeResponse> generateCheckInQr() async {
    try {
      // Obtener token de autenticación
      final tokenResult = await _authLocalDataSource.getToken();
      return tokenResult.fold((failure) => left(failure), (token) async {
        if (token == null) {
          return left(
            const AuthFailure('Token de autenticación no encontrado'),
          );
        }

        final response = await _dio.post(
          '/attendance/checkin/qr',
          options: Options(headers: {'Authorization': 'Bearer $token'}),
        );

        if (response.statusCode == 200 || response.statusCode == 201) {
          final qrCodeResponseModel = QrCodeResponseModel.fromJson(
            response.data,
          );

          // Verificar si la respuesta indica éxito
          if (qrCodeResponseModel.success) {
            return right(qrCodeResponseModel.toDomain());
          } else {
            // La API devolvió success: false
            final message =
                response.data['message'] ?? 'Error en la operación de check-in';
            return left(AttendanceFailure(message));
          }
        } else {
          print('Error Response Status: ${response.statusCode}');
          print('Error Response Data: ${response.data}');
          return left(
            ServerFailure(
              'Error del servidor: ${response.statusCode} - ${response.statusMessage}',
            ),
          );
        }
      });
    } on DioException catch (e) {
      print('DioException caught:');
      print('Status Code: ${e.response?.statusCode}');
      print('Response Data: ${e.response?.data}');
      print('Error Message: ${e.message}');
      return left(_handleDioError(e));
    } catch (e) {
      print('Unexpected error: $e');
      return left(ServerFailure('Error inesperado: $e'));
    }
  }

  @override
  FutureEither<QrCodeResponse> generateCheckInQrForEmployee(
    String employeeId,
  ) async {
    try {
      // Obtener token de autenticación
      final tokenResult = await _authLocalDataSource.getToken();
      return tokenResult.fold((failure) => left(failure), (token) async {
        if (token == null) {
          return left(
            const AuthFailure('Token de autenticación no encontrado'),
          );
        }

        final response = await _dio.post(
          '/api/v1/attendance/checkin/qr/$employeeId',
          options: Options(headers: {'Authorization': 'Bearer $token'}),
        );

        if (response.statusCode == 200 || response.statusCode == 201) {
          final qrCodeResponseModel = QrCodeResponseModel.fromJson(
            response.data,
          );

          // Verificar si la respuesta indica éxito
          if (qrCodeResponseModel.success) {
            return right(qrCodeResponseModel.toDomain());
          } else {
            // La API devolvió success: false
            final message =
                response.data['message'] ?? 'Error en la operación de check-in';
            return left(AttendanceFailure(message));
          }
        } else {
          return left(
            ServerFailure(
              'Error del servidor: ${response.statusCode} - ${response.statusMessage}',
            ),
          );
        }
      });
    } on DioException catch (e) {
      return left(_handleDioError(e));
    } catch (e) {
      return left(ServerFailure('Error inesperado: $e'));
    }
  }

  @override
  FutureEither<QrCodeResponse> generateCheckOutQr() async {
    try {
      // Obtener token de autenticación
      final tokenResult = await _authLocalDataSource.getToken();
      return await tokenResult.fold((failure) async => left(failure), (
        token,
      ) async {
        if (token == null) {
          return left(
            const AuthFailure('Token de autenticación no encontrado'),
          );
        }

        try {
          final response = await _dio.post(
            '/attendance/checkout/qr',
            options: Options(headers: {'Authorization': 'Bearer $token'}),
          );

          if (response.statusCode == 200 || response.statusCode == 201) {
            final qrCodeResponseModel = QrCodeResponseModel.fromJson(
              response.data,
            );

            // Verificar si la respuesta indica éxito
            if (qrCodeResponseModel.success) {
              return right(qrCodeResponseModel.toDomain());
            } else {
              // La API devolvió success: false
              final message =
                  response.data['message'] ??
                  'Error en la operación de checkout';
              return left(AttendanceFailure(message));
            }
          } else {
            return left(
              ServerFailure(
                'Error del servidor: ${response.statusCode} - ${response.statusMessage}',
              ),
            );
          }
        } on DioException catch (e) {
          return left(_handleDioError(e));
        }
      });
    } catch (e) {
      return left(ServerFailure('Error inesperado: $e'));
    }
  }

  @override
  FutureEither<QrCodeResponse> generateCheckOutQrForEmployee(
    String employeeId,
  ) async {
    try {
      // Obtener token de autenticación
      final tokenResult = await _authLocalDataSource.getToken();
      return tokenResult.fold((failure) => left(failure), (token) async {
        if (token == null) {
          return left(
            const AuthFailure('Token de autenticación no encontrado'),
          );
        }

        final response = await _dio.post(
          '/api/v1/attendance/checkout/qr/$employeeId',
          options: Options(headers: {'Authorization': 'Bearer $token'}),
        );

        if (response.statusCode == 200 || response.statusCode == 201) {
          final qrCodeResponseModel = QrCodeResponseModel.fromJson(
            response.data,
          );

          // Verificar si la respuesta indica éxito
          if (qrCodeResponseModel.success) {
            return right(qrCodeResponseModel.toDomain());
          } else {
            // La API devolvió success: false
            final message =
                response.data['message'] ?? 'Error en la operación de checkout';
            return left(AttendanceFailure(message));
          }
        } else {
          return left(
            ServerFailure(
              'Error del servidor: ${response.statusCode} - ${response.statusMessage}',
            ),
          );
        }
      });
    } on DioException catch (e) {
      return left(_handleDioError(e));
    } catch (e) {
      return left(ServerFailure('Error inesperado: $e'));
    }
  }

  @override
  FutureEither<ValidateCodeResponse> validateCode(
    ValidateCodeRequest request,
  ) async {
    try {
      // Obtener token de autenticación
      final tokenResult = await _authLocalDataSource.getToken();
      return tokenResult.fold((failure) => left(failure), (token) async {
        if (token == null) {
          return left(
            const AuthFailure('Token de autenticación no encontrado'),
          );
        }

        final response = await _dio.post(
          '/attendance/validate',
          data: request.toModel().toJson(),
          options: Options(
            headers: {
              'Authorization': 'Bearer $token',
              'Content-Type': 'application/json',
            },
          ),
        );

        if (response.statusCode == 200) {
          final validateCodeResponseModel = ValidateCodeResponseModel.fromJson(
            response.data,
          );
          return right(validateCodeResponseModel.toDomain());
        } else {
          return left(
            ServerFailure(
              'Error del servidor: ${response.statusCode} - ${response.statusMessage}',
            ),
          );
        }
      });
    } on DioException catch (e) {
      return left(_handleDioError(e));
    } catch (e) {
      return left(ServerFailure('Error inesperado: $e'));
    }
  }

  @override
  FutureEither<ConfirmAttendanceResponse> confirmAttendance(
    ConfirmAttendanceRequest request,
  ) async {
    try {
      // Obtener token de autenticación
      final tokenResult = await _authLocalDataSource.getToken();
      return tokenResult.fold((failure) => left(failure), (token) async {
        if (token == null) {
          return left(
            const AuthFailure('Token de autenticación no encontrado'),
          );
        }

        // Convertir la entidad del dominio al modelo de datos
        final requestModel = request.toModel();
        final jsonData = requestModel.toJson();
        
        // Log para debugging
        print('=== CONFIRM ATTENDANCE DEBUG ===');
        print('Request JSON: $jsonData');
        print('Token: ${token?.substring(0, 20)}...');
        
        final response = await _dio.post(
          '/attendance/confirm',
          data: jsonData,
          options: Options(
            headers: {
              'Authorization': 'Bearer $token',
              'Content-Type': 'application/json',
            },
          ),
        );
        
        print('Response Status: ${response.statusCode}');
        print('Response Data: ${response.data}');

        if (response.statusCode == 200 || response.statusCode == 201) {
          final confirmAttendanceResponseModel =
              ConfirmAttendanceResponseModel.fromJson(response.data);

          // Verificar si la respuesta indica éxito
          if (confirmAttendanceResponseModel.success) {
            return right(confirmAttendanceResponseModel.toDomain());
          } else {
            // La API devolvió success: false
            final message =
                response.data['message'] ??
                'Error en la confirmación de asistencia';
            return left(AttendanceFailure(message));
          }
        } else {
          return left(
            ServerFailure(
              'Error del servidor: ${response.statusCode} - ${response.statusMessage}',
            ),
          );
        }
      });
    } on DioException catch (e) {
      return left(_handleDioError(e));
    } catch (e) {
      return left(ServerFailure('Error inesperado: $e'));
    }
  }

  Failure _handleDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return const NetworkFailure('Tiempo de conexión agotado');
      case DioExceptionType.connectionError:
        return const NetworkFailure('Error de conexión a internet');
      case DioExceptionType.badResponse:
        final statusCode = e.response?.statusCode;
        final message = e.response?.data?['message'] ?? 'Error del servidor';

        switch (statusCode) {
          case 400:
            // Para errores 400, usar directamente el mensaje de la API
            return AttendanceFailure(message);
          case 401:
            return const AuthFailure('Token de autenticación inválido');
          case 403:
            return const AttendanceFailure(
              'No tienes permisos para esta operación',
            );
          case 404:
            return const AttendanceFailure('Empleado no encontrado');
          case 500:
            return const ServerFailure('Error interno del servidor');
          default:
            return ServerFailure('Error del servidor: $message');
        }
      default:
        return ServerFailure('Error de red: ${e.message}');
    }
  }

  @override
  FutureEither<AttendanceHistoryResponse> getAttendanceHistory(
    AttendanceHistoryRequest request,
  ) async {
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
          '/attendance/history',
          queryParameters: request.toQueryParameters(),
          options: Options(headers: {'Authorization': 'Bearer $token'}),
        );

        if (response.statusCode == 200) {
          final historyResponseModel = AttendanceHistoryResponseModel.fromJson(
            response.data,
          );

          if (historyResponseModel.success) {
            return right(historyResponseModel.toDomain());
          } else {
            return left(
              ServerFailure(
                historyResponseModel.message ?? 'Error al obtener historial',
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
      return left(_handleDioError(e));
    } catch (e) {
      return left(ServerFailure('Error inesperado: $e'));
    }
  }

  @override
  FutureEither<AttendanceHistoryResponse> getAttendanceHistoryForEmployee(
    String employeeId,
    AttendanceHistoryRequest request,
  ) async {
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
          '/attendance/history/$employeeId',
          queryParameters: request.toQueryParameters(),
          options: Options(headers: {'Authorization': 'Bearer $token'}),
        );

        if (response.statusCode == 200) {
          final historyResponseModel = AttendanceHistoryResponseModel.fromJson(
            response.data,
          );

          if (historyResponseModel.success) {
            return right(historyResponseModel.toDomain());
          } else {
            return left(
              ServerFailure(
                historyResponseModel.message ?? 'Error al obtener historial',
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
      return left(_handleDioError(e));
    } catch (e) {
      return left(ServerFailure('Error inesperado: $e'));
    }
  }

  @override
  FutureEither<AttendanceHistoryResponse> getAllAttendanceHistory(
    AttendanceHistoryRequest request,
  ) async {
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
          '/attendance/history',
          queryParameters: request.toQueryParameters(),
          options: Options(headers: {'Authorization': 'Bearer $token'}),
        );

        if (response.statusCode == 200) {
          final historyResponseModel = AttendanceHistoryResponseModel.fromJson(
            response.data,
          );

          if (historyResponseModel.success) {
            return right(historyResponseModel.toDomain());
          } else {
            return left(
              ServerFailure(
                historyResponseModel.message ?? 'Error al obtener historial',
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
      return left(_handleDioError(e));
    } catch (e) {
      return left(ServerFailure('Error inesperado: $e'));
    }
  }
}
