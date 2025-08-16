import 'dart:io';
import 'package:attendance_app/src/core/core.dart';
import '../repositories/import_employees_repository.dart';

class DownloadTemplateUseCase {
  final ImportEmployeesRepository _repository;

  DownloadTemplateUseCase(this._repository);

  FutureEither<File> call() async {
    return await _repository.downloadTemplate();
  }
}