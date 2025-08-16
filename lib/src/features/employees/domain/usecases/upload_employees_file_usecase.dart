import 'dart:io';
import 'package:attendance_app/src/core/core.dart';
import '../entities/import_response_entity.dart';
import '../repositories/import_employees_repository.dart';

class UploadEmployeesFileUseCase {
  final ImportEmployeesRepository _repository;

  UploadEmployeesFileUseCase(this._repository);

  FutureEither<ImportResponseEntity> call(File file) async {
    return await _repository.uploadEmployeesFile(file);
  }
}