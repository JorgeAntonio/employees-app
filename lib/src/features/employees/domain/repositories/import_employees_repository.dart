import 'dart:io';

import 'package:attendance_app/src/core/core.dart';
import 'package:fpdart/fpdart.dart';

import '../entities/import_response_entity.dart';

abstract class ImportEmployeesRepository {
  /// Descarga el template de Excel/CSV para importar empleados
  Future<Either<Failure, File>> downloadTemplate();

  /// Sube un archivo Excel/CSV con empleados para importar
  Future<Either<Failure, ImportResponseEntity>> uploadEmployeesFile(File file);
}
