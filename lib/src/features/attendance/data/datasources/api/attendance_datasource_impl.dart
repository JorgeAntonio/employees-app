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

  // Constructor para usar DioConfig centralizado
  AttendanceDataSourceImpl.withDioConfig(this._authLocalDataSource)
    : _dio = DioConfig.createDio(enableLogging: true);

  // Constructor sin interceptores (mantenido para compatibilidad)
  AttendanceDataSourceImpl.withoutInterceptors(this._authLocalDataSource)
    : _dio = DioConfig.createDio(enableLogging: false);

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
            // La API devolvió success: false, usar manejo amigable
            return left(_handleAttendanceSpecificError(response.data));
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
            // La API devolvió success: false, usar manejo amigable
            return left(_handleAttendanceSpecificError(response.data));
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
              // La API devolvió success: false, usar manejo amigable
              return left(_handleAttendanceSpecificError(response.data));
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
            // La API devolvió success: false, usar manejo amigable
            return left(_handleAttendanceSpecificError(response.data));
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
            // La API devolvió success: false, usar manejo amigable de errores
            return left(_handleAttendanceSpecificError(response.data));
          }
        } else if (response.statusCode == 400 || response.statusCode == 422) {
          // Manejar errores 400/422 que no lanzan DioException
          return left(_handleAttendanceSpecificError(response.data));
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
        // Usar manejo amigable de errores específicos de asistencia
        return left(_handleAttendanceSpecificError(e.response!.data));
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
            // La API devolvió success: false, usar manejo amigable
            return left(_handleAttendanceSpecificError(response.data));
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

        switch (statusCode) {
          case 400:
            // Detectar casos específicos de asistencia y mostrar mensajes amigables
            return _handleAttendanceSpecificError(responseData);
          case 401:
            return const AuthFailure(
              'Tu sesión ha expirado. Inicia sesión nuevamente',
            );
          case 403:
            return const AttendanceFailure(
              'No tienes permisos para realizar esta acción',
            );
          case 404:
            return const AttendanceFailure(
              'El código QR no es válido o ha expirado',
            );
          case 500:
            return const ServerFailure(
              'Servicio temporalmente no disponible. Intenta más tarde',
            );
          default:
            return const AttendanceFailure(
              'Error al procesar tu solicitud. Intenta nuevamente',
            );
        }
      default:
        return const NetworkFailure(
          'Revisa tu conexión a internet e intenta nuevamente',
        );
    }
  }

  /// Maneja errores específicos de asistencia con mensajes amigables
  AttendanceFailure _handleAttendanceSpecificError(dynamic responseData) {
    final apiMessage = _extractErrorMessage(responseData).toLowerCase();

    // Detectar casos específicos y devolver mensajes amigables
    if (apiMessage.contains('check-in activo') ||
        apiMessage.contains('ya tienes un ingreso') ||
        apiMessage.contains('check-in') && apiMessage.contains('activo')) {
      return const AttendanceFailure(
        'Ya tienes un ingreso registrado. Primero debes registrar tu salida',
      );
    }

    if (apiMessage.contains('check-out') && apiMessage.contains('primero')) {
      return const AttendanceFailure(
        'Debes registrar tu ingreso antes de poder registrar la salida',
      );
    }

    if (apiMessage.contains('código') &&
        (apiMessage.contains('inválido') || apiMessage.contains('expirado'))) {
      return const AttendanceFailure(
        'El código QR no es válido o ha expirado. Solicita uno nuevo',
      );
    }

    if (apiMessage.contains('fuera del horario') ||
        apiMessage.contains('horario')) {
      return const AttendanceFailure(
        'No puedes registrar asistencia fuera del horario laboral',
      );
    }

    if (apiMessage.contains('ubicación') || apiMessage.contains('distancia')) {
      return const AttendanceFailure(
        'Debes estar en la ubicación de trabajo para registrar tu asistencia',
      );
    }

    // Mensaje genérico amigable para otros casos
    return const AttendanceFailure(
      'No se pudo procesar tu solicitud. Verifica los datos e intenta nuevamente',
    );
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
