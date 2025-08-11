import 'package:attendance_app/src/features/attendance/domain/entities/attendance_entities.dart';
import 'package:attendance_app/src/features/attendance/domain/repositories/attendance_repository.dart';
import 'package:fpdart/fpdart.dart';

// Generate Check-In QR Code Use Case
class GenerateCheckInQRUseCase {
  final AttendanceRepository _repository;

  GenerateCheckInQRUseCase(this._repository);

  Future<Either<Exception, QRCode>> call() async {
    return await _repository.generateCheckInQR();
  }
}

// Generate Check-Out QR Code Use Case
class GenerateCheckOutQRUseCase {
  final AttendanceRepository _repository;

  GenerateCheckOutQRUseCase(this._repository);

  Future<Either<Exception, QRCode>> call() async {
    return await _repository.generateCheckOutQR();
  }
}

// Validate Code Use Case
class ValidateCodeUseCase {
  final AttendanceRepository _repository;

  ValidateCodeUseCase(this._repository);

  Future<Either<Exception, AttendanceValidation>> call(String code) async {
    return await _repository.validateCode(code);
  }
}

// Confirm Attendance Use Case
class ConfirmAttendanceUseCase {
  final AttendanceRepository _repository;

  ConfirmAttendanceUseCase(this._repository);

  Future<Either<Exception, AttendanceRecord>> call({
    required String code,
    bool confirmed = true,
    LocationInfo? locationInfo,
    DeviceInfo? deviceInfo,
  }) async {
    return await _repository.confirmAttendance(
      code: code,
      confirmed: confirmed,
      locationInfo: locationInfo,
      deviceInfo: deviceInfo,
    );
  }
}

// Get Attendance History Use Case
class GetAttendanceHistoryUseCase {
  final AttendanceRepository _repository;

  GetAttendanceHistoryUseCase(this._repository);

  Future<Either<Exception, AttendanceHistory>> call({
    int page = 1,
    int limit = 10,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    return await _repository.getAttendanceHistory(
      page: page,
      limit: limit,
      startDate: startDate,
      endDate: endDate,
    );
  }
}

// Get Attendance Status Use Case
class GetAttendanceStatusUseCase {
  final AttendanceRepository _repository;

  GetAttendanceStatusUseCase(this._repository);

  Future<Either<Exception, AttendanceStatus>> call() async {
    return await _repository.getAttendanceStatus();
  }
}

// Get Employee Profile Use Case
class GetEmployeeProfileUseCase {
  final AttendanceRepository _repository;

  GetEmployeeProfileUseCase(this._repository);

  Future<Either<Exception, EmployeeProfile>> call() async {
    return await _repository.getEmployeeProfile();
  }
}
