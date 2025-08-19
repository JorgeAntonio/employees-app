import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/attendance/data/data.dart';
import 'package:attendance_app/src/features/attendance/domain/repositories/attendance_repository.dart';
import 'package:attendance_app/src/features/attendance/domain/usecases/generate_checkin_qr_usecase.dart';
import 'package:attendance_app/src/features/attendance/domain/usecases/generate_checkout_qr_usecase.dart';
import 'package:attendance_app/src/features/attendance/domain/usecases/validate_code_usecase.dart';
import 'package:attendance_app/src/features/attendance/domain/usecases/confirm_attendance_usecase.dart';
import 'package:attendance_app/src/features/attendance/domain/usecases/get_attendance_history_usecase.dart';
import 'package:attendance_app/src/features/attendance/domain/usecases/get_attendance_history_for_employee_usecase.dart';
import 'package:attendance_app/src/features/attendance/domain/usecases/get_all_attendance_history_usecase.dart';
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
  final authLocalDataSource = ref.watch(authLocalDataSourceProvider);
  return AttendanceDataSourceImpl.withoutInterceptors(authLocalDataSource);
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

@riverpod
GenerateCheckOutQrUseCase generateCheckOutQrUseCase(Ref ref) {
  final attendanceRepository = ref.watch(attendanceRepositoryProvider);
  return GenerateCheckOutQrUseCase(attendanceRepository);
}

@riverpod
ValidateCodeUseCase validateCodeUseCase(Ref ref) {
  final attendanceRepository = ref.watch(attendanceRepositoryProvider);
  return ValidateCodeUseCase(attendanceRepository);
}

@riverpod
ConfirmAttendanceUseCase confirmAttendanceUseCase(Ref ref) {
  final attendanceRepository = ref.watch(attendanceRepositoryProvider);
  return ConfirmAttendanceUseCase(attendanceRepository);
}

@riverpod
GetAttendanceHistoryUseCase getAttendanceHistoryUseCase(Ref ref) {
  final attendanceRepository = ref.watch(attendanceRepositoryProvider);
  return GetAttendanceHistoryUseCase(attendanceRepository);
}

@riverpod
GetAttendanceHistoryForEmployeeUseCase getAttendanceHistoryForEmployeeUseCase(Ref ref) {
  final attendanceRepository = ref.watch(attendanceRepositoryProvider);
  return GetAttendanceHistoryForEmployeeUseCase(attendanceRepository);
}

@riverpod
GetAllAttendanceHistoryUseCase getAllAttendanceHistoryUseCase(Ref ref) {
  final attendanceRepository = ref.watch(attendanceRepositoryProvider);
  return GetAllAttendanceHistoryUseCase(attendanceRepository);
}