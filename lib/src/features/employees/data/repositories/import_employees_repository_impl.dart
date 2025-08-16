import 'dart:io';
import 'package:attendance_app/src/core/core.dart';
import 'package:fpdart/fpdart.dart';
import '../../domain/datasources/api/import_employees_datasource.dart';
import '../../domain/entities/import_response_entity.dart';
import '../../domain/repositories/import_employees_repository.dart';

class ImportEmployeesRepositoryImpl implements ImportEmployeesRepository {
  final ImportEmployeesDataSource _dataSource;

  ImportEmployeesRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, File>> downloadTemplate() async {
    try {
      final file = await _dataSource.downloadTemplate();
      return Right(file);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, ImportResponseEntity>> uploadEmployeesFile(File file) async {
    try {
      // Validar que el archivo existe
      if (!await file.exists()) {
        return Left(ValidationFailure('El archivo seleccionado no existe'));
      }

      // Validar el tamaño del archivo (máximo 10MB)
      final fileSize = await file.length();
      if (fileSize > 10 * 1024 * 1024) {
        return Left(ValidationFailure('El archivo es demasiado grande. Máximo 10MB'));
      }

      // Validar la extensión del archivo
      final fileName = file.path.toLowerCase();
      if (!fileName.endsWith('.csv') && !fileName.endsWith('.xlsx') && !fileName.endsWith('.xls')) {
        return Left(ValidationFailure('Formato de archivo no válido. Solo se permiten archivos CSV, XLS o XLSX'));
      }

      final response = await _dataSource.uploadEmployeesFile(file);
      return Right(response);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}