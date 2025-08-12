import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/qr_code_response.dart';
import 'package:attendance_app/src/features/attendance/domain/repositories/attendance_repository.dart';
import 'package:fpdart/fpdart.dart';

class GenerateCheckInQrUseCase {
  final AttendanceRepository _attendanceRepository;

  GenerateCheckInQrUseCase(this._attendanceRepository);

  /// Generate QR code for check-in (for employees)
  FutureEither<QrCodeResponse> call() async {
    return await _attendanceRepository.generateCheckInQr();
  }

  /// Generate QR code for check-in for specific employee (for admins)
  FutureEither<QrCodeResponse> callForEmployee(String employeeId) async {
    // Validate input
    if (employeeId.isEmpty) {
      return left(const AttendanceFailure('El ID del empleado es requerido'));
    }

    return await _attendanceRepository.generateCheckInQrForEmployee(employeeId);
  }
}