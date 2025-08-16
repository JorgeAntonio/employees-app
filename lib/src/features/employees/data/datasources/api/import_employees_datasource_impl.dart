import 'dart:io';

import 'package:attendance_app/src/features/auth/data/data.dart';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';

import '../../../domain/datasources/api/import_employees_datasource.dart';
import '../../../domain/entities/import_response_entity.dart';
import '../../models/import_response/import_response_model.dart';

class ImportEmployeesDataSourceImpl implements ImportEmployeesDataSource {
  final Dio _dio;
  final AuthLocalDataSource _authLocalDataSource;
  ImportEmployeesDataSourceImpl(this._dio, this._authLocalDataSource);

  @override
  Future<File> downloadTemplate() async {
    try {
      // Obtener token de autenticación
      final tokenResult = await _authLocalDataSource.getToken();
      return tokenResult.fold(
        (failure) =>
            throw Exception('Error al obtener token: ${failure.message}'),
        (token) async {
          if (token == null) {
            throw Exception('Token de autenticación no encontrado');
          }

          final response = await _dio.get(
            '/employees/import/template',
            options: Options(
              headers: {'Authorization': 'Bearer $token'},
              responseType: ResponseType.bytes,
              followRedirects: false,
              validateStatus: (status) {
                return status! < 500;
              },
            ),
          );

          if (response.statusCode == 200) {
            // Obtener el directorio de descargas
            final directory = await getApplicationDocumentsDirectory();
            final filePath = '${directory.path}/employees_template.xlsx';

            // Crear el archivo
            final file = File(filePath);
            await file.writeAsBytes(response.data);

            return file;
          } else {
            throw Exception(
              'Error al descargar el template: ${response.statusCode}',
            );
          }
        },
      );
    } on DioException catch (e) {
      throw Exception('Error de conexión al descargar template: ${e.message}');
    } catch (e) {
      throw Exception('Error inesperado al descargar template: $e');
    }
  }

  @override
  Future<ImportResponseEntity> uploadEmployeesFile(File file) async {
    try {
      // Obtener token de autenticación
      final tokenResult = await _authLocalDataSource.getToken();
      return tokenResult.fold(
        (failure) =>
            throw Exception('Error al obtener token: ${failure.message}'),
        (token) async {
          if (token == null) {
            throw Exception('Token de autenticación no encontrado');
          }

          final formData = FormData.fromMap({
            'file': await MultipartFile.fromFile(
              file.path,
              filename: file.path.split('/').last,
            ),
          });

          final response = await _dio.post(
            '/employees/import',
            data: formData,
            options: Options(
              headers: {'Authorization': 'Bearer $token'},
              contentType: 'multipart/form-data',
              validateStatus: (status) {
                return status! < 500;
              },
            ),
          );

          if (response.statusCode == 200 || response.statusCode == 201) {
            // La API devuelve: {success: true, data: {message: "...", result: {success: 2, failed: 0, errors: []}}}
            final responseData = response.data as Map<String, dynamic>;
            final data = responseData['data'] as Map<String, dynamic>;
            final result = data['result'] as Map<String, dynamic>;

            final importResponse = ImportResponseModel(
              success: responseData['success'] as bool,
              message: data['message'] as String,
              importedCount: result['success'] as int,
              errors: List<String>.from(result['errors'] as List),
            );
            return importResponse.toDomain();
          } else {
            // Manejar errores de validación o del servidor
            final errorData = response.data;
            if (errorData is Map<String, dynamic>) {
              final message =
                  errorData['message'] ?? 'Error al importar empleados';
              final errors = errorData['errors'] is List
                  ? List<String>.from(errorData['errors'])
                  : <String>[];

              return ImportResponseEntity(
                success: false,
                message: message,
                importedCount: 0,
                errors: errors,
              );
            } else {
              throw Exception(
                'Error al importar empleados: ${response.statusCode}',
              );
            }
          }
        },
      );
    } on DioException catch (e) {
      if (e.response != null) {
        final errorData = e.response!.data;
        if (errorData is Map<String, dynamic>) {
          final message = errorData['message'] ?? 'Error al importar empleados';
          final errors = errorData['errors'] is List
              ? List<String>.from(errorData['errors'])
              : <String>[];

          return ImportResponseEntity(
            success: false,
            message: message,
            importedCount: 0,
            errors: errors,
          );
        }
      }
      throw Exception('Error de conexión al importar empleados: ${e.message}');
    } catch (e) {
      throw Exception('Error inesperado al importar empleados: $e');
    }
  }
}
