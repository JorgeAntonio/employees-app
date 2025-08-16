import 'dart:io';
import '../../entities/import_response_entity.dart';

abstract class ImportEmployeesDataSource {
  /// Descarga el template de Excel/CSV para importar empleados
  Future<File> downloadTemplate();
  
  /// Sube un archivo Excel/CSV con empleados para importar
  Future<ImportResponseEntity> uploadEmployeesFile(File file);
}