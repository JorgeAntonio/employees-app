import 'dart:io';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import '../../../domain/datasources/api/import_employees_datasource.dart';
import '../../../domain/entities/import_response_entity.dart';
import '../../models/import_response/import_response_model.dart';

class ImportEmployeesDataSourceImpl implements ImportEmployeesDataSource {
  final Dio _dio;
  static const String _baseUrl = 'https://employees-back-1.onrender.com/api/v1';

  ImportEmployeesDataSourceImpl(this._dio);

  @override
  Future<File> downloadTemplate() async {
    try {
      final response = await _dio.get(
        '$_baseUrl/employees/import/template',
        options: Options(
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
        final filePath = '${directory.path}/employees_template.csv';
        
        // Crear el archivo
        final file = File(filePath);
        await file.writeAsBytes(response.data);
        
        return file;
      } else {
        throw Exception('Error al descargar el template: ${response.statusCode}');
      }
    } on DioException catch (e) {
      throw Exception('Error de conexión al descargar template: ${e.message}');
    } catch (e) {
      throw Exception('Error inesperado al descargar template: $e');
    }
  }

  @override
  Future<ImportResponseEntity> uploadEmployeesFile(File file) async {
    try {
      // Crear FormData para el archivo
      final formData = FormData.fromMap({
        'file': await MultipartFile.fromFile(
          file.path,
          filename: file.path.split('/').last,
        ),
      });

      final response = await _dio.post(
        '$_baseUrl/employees/import',
        data: formData,
        options: Options(
          contentType: 'multipart/form-data',
          validateStatus: (status) {
            return status! < 500;
          },
        ),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final importResponse = ImportResponseModel.fromJson(response.data);
        return importResponse.toDomain();
      } else {
        // Manejar errores de validación o del servidor
        final errorData = response.data;
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
        } else {
          throw Exception('Error al importar empleados: ${response.statusCode}');
        }
      }
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