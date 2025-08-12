import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/qr_code_response.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/validate_code_request.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/validate_code_response.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/confirm_attendance_request.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/confirm_attendance_response.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/attendance_history_request.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/attendance_history_response.dart';

abstract class AttendanceDataSource {
  /// Generate QR code for check-in (for employees)
  FutureEither<QrCodeResponse> generateCheckInQr();
  
  /// Generate QR code for check-in for specific employee (for admins)
  FutureEither<QrCodeResponse> generateCheckInQrForEmployee(String employeeId);
  
  /// Generate QR code for check-out (for employees)
  FutureEither<QrCodeResponse> generateCheckOutQr();
  
  /// Generate QR code for check-out for specific employee (for admins)
  FutureEither<QrCodeResponse> generateCheckOutQrForEmployee(String employeeId);
  
  /// Validate QR code or manual code
  FutureEither<ValidateCodeResponse> validateCode(ValidateCodeRequest request);
  
  /// Confirm attendance
  FutureEither<ConfirmAttendanceResponse> confirmAttendance(ConfirmAttendanceRequest request);
  
  /// Get attendance history for current employee
  FutureEither<AttendanceHistoryResponse> getAttendanceHistory(AttendanceHistoryRequest request);
  
  /// Get attendance history for specific employee (for admins)
  FutureEither<AttendanceHistoryResponse> getAttendanceHistoryForEmployee(
    String employeeId, 
    AttendanceHistoryRequest request
  );
  
  /// Get general attendance history (for admins)
  FutureEither<AttendanceHistoryResponse> getAllAttendanceHistory(AttendanceHistoryRequest request);
}