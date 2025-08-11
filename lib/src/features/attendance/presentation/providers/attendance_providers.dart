import 'package:attendance_app/src/features/attendance/data/datasources/attendance_remote_datasource.dart';
import 'package:attendance_app/src/features/attendance/data/repositories/attendance_repository_impl.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/attendance_entities.dart';
import 'package:attendance_app/src/features/attendance/domain/repositories/attendance_repository.dart';
import 'package:attendance_app/src/features/attendance/domain/usecases/attendance_usecases.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'attendance_providers.g.dart';

// Dio Provider
@riverpod
Dio dio(Ref ref) {
  return Dio();
}

// DataSource Provider
@riverpod
AttendanceRemoteDataSource attendanceRemoteDataSource(Ref ref) {
  final dio = ref.watch(dioProvider);
  return AttendanceRemoteDataSourceImpl(dio);
}

// Repository Provider
@riverpod
AttendanceRepository attendanceRepository(Ref ref) {
  final dataSource = ref.watch(attendanceRemoteDataSourceProvider);
  return AttendanceRepositoryImpl(dataSource);
}

// Use Cases Providers
@riverpod
GenerateCheckInQRUseCase generateCheckInQRUseCase(Ref ref) {
  final repository = ref.watch(attendanceRepositoryProvider);
  return GenerateCheckInQRUseCase(repository);
}

@riverpod
GenerateCheckOutQRUseCase generateCheckOutQRUseCase(Ref ref) {
  final repository = ref.watch(attendanceRepositoryProvider);
  return GenerateCheckOutQRUseCase(repository);
}

@riverpod
ValidateCodeUseCase validateCodeUseCase(Ref ref) {
  final repository = ref.watch(attendanceRepositoryProvider);
  return ValidateCodeUseCase(repository);
}

@riverpod
ConfirmAttendanceUseCase confirmAttendanceUseCase(Ref ref) {
  final repository = ref.watch(attendanceRepositoryProvider);
  return ConfirmAttendanceUseCase(repository);
}

@riverpod
GetAttendanceHistoryUseCase getAttendanceHistoryUseCase(Ref ref) {
  final repository = ref.watch(attendanceRepositoryProvider);
  return GetAttendanceHistoryUseCase(repository);
}

@riverpod
GetAttendanceStatusUseCase getAttendanceStatusUseCase(Ref ref) {
  final repository = ref.watch(attendanceRepositoryProvider);
  return GetAttendanceStatusUseCase(repository);
}

@riverpod
GetEmployeeProfileUseCase getEmployeeProfileUseCase(Ref ref) {
  final repository = ref.watch(attendanceRepositoryProvider);
  return GetEmployeeProfileUseCase(repository);
}

// State Providers
@riverpod
class QRCodeNotifier extends _$QRCodeNotifier {
  @override
  Future<Either<Exception, QRCode>> build() async {
    return Left(Exception('No QR code generated yet'));
  }

  Future<void> generateCheckInQR() async {
    state = const AsyncValue.loading();
    try {
      final useCase = ref.read(generateCheckInQRUseCaseProvider);
      final result = await useCase();
      state = AsyncValue.data(result);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }

  Future<void> generateCheckOutQR() async {
    state = const AsyncValue.loading();
    try {
      final useCase = ref.read(generateCheckOutQRUseCaseProvider);
      final result = await useCase();
      state = AsyncValue.data(result);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }
}

@riverpod
class AttendanceValidationNotifier extends _$AttendanceValidationNotifier {
  @override
  Future<Either<Exception, AttendanceValidation>> build() async {
    return Left(Exception('No validation performed yet'));
  }

  Future<void> validateCode(String code) async {
    state = const AsyncValue.loading();
    try {
      final useCase = ref.read(validateCodeUseCaseProvider);
      final result = await useCase(code);
      state = AsyncValue.data(result);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }
}

@riverpod
class AttendanceConfirmationNotifier extends _$AttendanceConfirmationNotifier {
  @override
  Future<Either<Exception, AttendanceRecord>> build() async {
    return Left(Exception('No attendance confirmed yet'));
  }

  Future<void> confirmAttendance({
    required String code,
    bool confirmed = true,
    LocationInfo? locationInfo,
    DeviceInfo? deviceInfo,
  }) async {
    state = const AsyncValue.loading();
    try {
      final useCase = ref.read(confirmAttendanceUseCaseProvider);
      final result = await useCase(
        code: code,
        confirmed: confirmed,
        locationInfo: locationInfo,
        deviceInfo: deviceInfo,
      );
      state = AsyncValue.data(result);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }
}

@riverpod
class AttendanceHistoryNotifier extends _$AttendanceHistoryNotifier {
  @override
  Future<Either<Exception, AttendanceHistory>> build() async {
    return Left(Exception('No history loaded yet'));
  }

  Future<void> loadHistory({
    int page = 1,
    int limit = 10,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    state = const AsyncValue.loading();
    try {
      final useCase = ref.read(getAttendanceHistoryUseCaseProvider);
      final result = await useCase(
        page: page,
        limit: limit,
        startDate: startDate,
        endDate: endDate,
      );
      state = AsyncValue.data(result);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }
}

@riverpod
class AttendanceStatusNotifier extends _$AttendanceStatusNotifier {
  @override
  Future<Either<Exception, AttendanceStatus>> build() async {
    return Left(Exception('No status loaded yet'));
  }

  Future<void> loadStatus() async {
    state = const AsyncValue.loading();
    try {
      final useCase = ref.read(getAttendanceStatusUseCaseProvider);
      final result = await useCase();
      state = AsyncValue.data(result);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }
}

@riverpod
class EmployeeProfileNotifier extends _$EmployeeProfileNotifier {
  @override
  Future<Either<Exception, EmployeeProfile>> build() async {
    return Left(Exception('No profile loaded yet'));
  }

  Future<void> loadProfile() async {
    state = const AsyncValue.loading();
    try {
      final useCase = ref.read(getEmployeeProfileUseCaseProvider);
      final result = await useCase();
      state = AsyncValue.data(result);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }
}
