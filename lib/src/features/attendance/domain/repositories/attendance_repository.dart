import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/qr_code_response.dart';

abstract class AttendanceRepository {
  /// Generate QR code for check-in (for employees)
  FutureEither<QrCodeResponse> generateCheckInQr();
  
  /// Generate QR code for check-in for specific employee (for admins)
  FutureEither<QrCodeResponse> generateCheckInQrForEmployee(String employeeId);
}