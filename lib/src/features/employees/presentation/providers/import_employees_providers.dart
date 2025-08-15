import 'dart:io';

import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/employees/data/datasources/api/import_employees_datasource_impl.dart';
import 'package:attendance_app/src/features/employees/data/repositories/import_employees_repository_impl.dart';
import 'package:attendance_app/src/features/employees/domain/datasources/api/import_employees_datasource.dart';
import 'package:attendance_app/src/features/employees/domain/repositories/import_employees_repository.dart';
import 'package:attendance_app/src/features/employees/domain/usecases/download_template_usecase.dart';
import 'package:attendance_app/src/features/employees/domain/usecases/upload_employees_file_usecase.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/import_response_entity.dart';

part 'import_employees_providers.g.dart';

// Dio Provider for Import
@riverpod
Dio importEmployeesDio(Ref ref) {
  return DioConfig.createDio(enableLogging: true);
}

// Import DataSource Provider
@riverpod
ImportEmployeesDataSource importEmployeesDataSource(Ref ref) {
  final dio = ref.watch(importEmployeesDioProvider);
  return ImportEmployeesDataSourceImpl(dio);
}

// Import Repository Provider
@riverpod
ImportEmployeesRepository importEmployeesRepository(Ref ref) {
  final dataSource = ref.watch(importEmployeesDataSourceProvider);
  return ImportEmployeesRepositoryImpl(dataSource);
}

// Use Cases Providers
@riverpod
DownloadTemplateUseCase downloadTemplateUseCase(Ref ref) {
  final repository = ref.watch(importEmployeesRepositoryProvider);
  return DownloadTemplateUseCase(repository);
}

@riverpod
UploadEmployeesFileUseCase uploadEmployeesFileUseCase(Ref ref) {
  final repository = ref.watch(importEmployeesRepositoryProvider);
  return UploadEmployeesFileUseCase(repository);
}

// State Management Providers
@riverpod
class ImportEmployeesNotifier extends _$ImportEmployeesNotifier {
  @override
  ImportEmployeesState build() {
    return const ImportEmployeesState.initial();
  }

  Future<void> downloadTemplate() async {
    state = const ImportEmployeesState.downloadingTemplate();
    
    final downloadUseCase = ref.read(downloadTemplateUseCaseProvider);
    final result = await downloadUseCase();
    
    result.fold(
      (failure) => state = ImportEmployeesState.error(failure.message),
      (file) => state = ImportEmployeesState.templateDownloaded(file),
    );
  }

  Future<void> uploadEmployeesFile(File file) async {
    state = const ImportEmployeesState.uploading();
    
    final uploadUseCase = ref.read(uploadEmployeesFileUseCaseProvider);
    final result = await uploadUseCase(file);
    
    result.fold(
      (failure) => state = ImportEmployeesState.error(failure.message),
      (response) => state = ImportEmployeesState.uploadCompleted(response),
    );
  }

  void resetState() {
    state = const ImportEmployeesState.initial();
  }
}

// State classes
sealed class ImportEmployeesState {
  const ImportEmployeesState();

  const factory ImportEmployeesState.initial() = _Initial;
  const factory ImportEmployeesState.downloadingTemplate() =
      _DownloadingTemplate;
  const factory ImportEmployeesState.templateDownloaded(File file) =
      _TemplateDownloaded;
  const factory ImportEmployeesState.uploading() = _Uploading;
  const factory ImportEmployeesState.uploadCompleted(
    ImportResponseEntity response,
  ) = _UploadCompleted;
  const factory ImportEmployeesState.error(String message) = _Error;
}

class _Initial extends ImportEmployeesState {
  const _Initial();
}

class _DownloadingTemplate extends ImportEmployeesState {
  const _DownloadingTemplate();
}

class _TemplateDownloaded extends ImportEmployeesState {
  final File file;
  const _TemplateDownloaded(this.file);
}

class _Uploading extends ImportEmployeesState {
  const _Uploading();
}

class _UploadCompleted extends ImportEmployeesState {
  final ImportResponseEntity response;
  const _UploadCompleted(this.response);
}

class _Error extends ImportEmployeesState {
  final String message;
  const _Error(this.message);
}
