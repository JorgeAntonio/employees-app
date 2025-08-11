import 'package:attendance_app/src/features/attendance/domain/entities/attendance_entities.dart';
import 'package:fpdart/fpdart.dart';

abstract class AttendanceRepository {
  Future<Either<Exception, QRCode>> generateCheckInQR();
  Future<Either<Exception, QRCode>> generateCheckOutQR();
  Future<Either<Exception, AttendanceValidation>> validateCode(String code);
  Future<Either<Exception, AttendanceRecord>> confirmAttendance({
    required String code,
    bool confirmed = true,
    LocationInfo? locationInfo,
    DeviceInfo? deviceInfo,
  });
  Future<Either<Exception, AttendanceHistory>> getAttendanceHistory({
    int page = 1,
    int limit = 10,
    DateTime? startDate,
    DateTime? endDate,
  });
  Future<Either<Exception, AttendanceStatus>> getAttendanceStatus();
  Future<Either<Exception, EmployeeProfile>> getEmployeeProfile();
}
