import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/attendance/data/data.dart';
import 'package:attendance_app/src/features/attendance/domain/repositories/attendance_repository.dart';
import 'package:attendance_app/src/features/attendance/domain/usecases/generate_checkin_qr_usecase.dart';
import 'package:attendance_app/src/features/auth/presentation/providers/auth_providers.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'attendance_providers.g.dart';

// Dio Provider (reutilizamos el del auth si existe, sino creamos uno nuevo)
@riverpod
Dio attendanceDio(Ref ref) {
  return DioConfig.createDio(enableLogging: true);
}

// API DataSource Provider
@riverpod
AttendanceDataSourceImpl attendanceApiDataSource(Ref ref) {
  final dio = ref.watch(attendanceDioProvider);
  final authLocalDataSource = ref.watch(authLocalDataSourceProvider);
  return AttendanceDataSourceImpl(dio, authLocalDataSource);
}

// Repository Provider
@riverpod
AttendanceRepository attendanceRepository(Ref ref) {
  final apiDataSource = ref.watch(attendanceApiDataSourceProvider);

  return AttendanceRepositoryImpl(
    apiDataSource: apiDataSource,
  );
}

// Use Cases Providers
@riverpod
GenerateCheckInQrUseCase generateCheckInQrUseCase(Ref ref) {
  final attendanceRepository = ref.watch(attendanceRepositoryProvider);
  return GenerateCheckInQrUseCase(attendanceRepository);
}