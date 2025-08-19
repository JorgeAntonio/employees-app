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

  // Constructor alternativo sin interceptores
  AttendanceDataSourceImpl.withoutInterceptors(this._authLocalDataSource)
    : _dio = _createSimpleDio();

  static Dio _createSimpleDio() {
    final dio = Dio();
    dio.options.baseUrl = ApiServiceVariables.userService;
    dio.options.connectTimeout = const Duration(seconds: 30);
    dio.options.receiveTimeout = const Duration(seconds: 30);
    dio.options.sendTimeout = const Duration(seconds: 30);
    dio.options.headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };
    // Sin interceptores para manejar errores directamente
    return dio;
  }

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
          return left(
            ServerFailure(
              'Error del servidor: ${response.statusCode} - ${response.statusMessage}',
            ),
          );
        }
      });
    } on DioException catch (e) {
      final failure = _handleDioError(e);
      return left(failure);
    } catch (e) {
      // Si llegamos aquí, mostrar el error completo para debugging
      return left(AttendanceFailure('Error: $e'));
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
      final failure = _handleDioError(e);
      return left(failure);
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
      final failure = _handleDioError(e);
      return left(failure);
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
          // Verificar directamente si success es true en la respuesta
          if (response.data != null && response.data['success'] == true) {
            // Solo parsear el modelo si es exitoso
            final validateCodeResponseModel =
                ValidateCodeResponseModel.fromJson(response.data);

            return right(validateCodeResponseModel.toDomain());
          } else {
            // La API devolvió success: false, extraer el mensaje específico
            final errorMessage = _extractErrorMessage(response.data);
            return left(AttendanceFailure(errorMessage));
          }
        } else if (response.statusCode == 400 || response.statusCode == 422) {
          // Manejar errores 400/422 que no lanzan DioException
          final errorMessage = _extractErrorMessage(response.data);
          return left(AttendanceFailure(errorMessage));
        } else {
          return left(
            ServerFailure(
              'Error del servidor: ${response.statusCode} - ${response.statusMessage}',
            ),
          );
        }
      });
    } on DioException catch (e) {
      // Manejo especial para errores de validación de la API
      if (e.response?.data != null &&
          (e.response?.statusCode == 400 || e.response?.statusCode == 422)) {
        // Extraer el mensaje específico de la API
        final errorMessage = _extractErrorMessage(e.response!.data);
        return left(AttendanceFailure(errorMessage));
      }

      final failure = _handleDioError(e);
      return left(failure);
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
        final responseData = e.response?.data;
        // Extraer mensaje de error usando el mismo patrón que auth
        final errorMessage = _extractErrorMessage(responseData);

        switch (statusCode) {
          case 400:
            // Para errores 400, usar directamente el mensaje de la API

            return AttendanceFailure(errorMessage);
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
            return ServerFailure('Error del servidor: $errorMessage');
        }
      default:
        return ServerFailure('Error de red: ${e.message}');
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
