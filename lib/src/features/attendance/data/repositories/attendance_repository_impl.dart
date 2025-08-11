import 'package:attendance_app/src/features/attendance/data/datasources/attendance_remote_datasource.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/attendance_entities.dart';
import 'package:attendance_app/src/features/attendance/domain/repositories/attendance_repository.dart';
import 'package:fpdart/fpdart.dart';

class AttendanceRepositoryImpl implements AttendanceRepository {
  final AttendanceRemoteDataSource _remoteDataSource;

  AttendanceRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Exception, QRCode>> generateCheckInQR() async {
    return await _remoteDataSource.generateCheckInQR();
  }

  @override
  Future<Either<Exception, QRCode>> generateCheckOutQR() async {
    return await _remoteDataSource.generateCheckOutQR();
  }

  @override
  Future<Either<Exception, AttendanceValidation>> validateCode(
    String code,
  ) async {
    return await _remoteDataSource.validateCode(code);
  }

  @override
  Future<Either<Exception, AttendanceRecord>> confirmAttendance({
    required String code,
    bool confirmed = true,
    LocationInfo? locationInfo,
    DeviceInfo? deviceInfo,
  }) async {
    return await _remoteDataSource.confirmAttendance(
      code: code,
      confirmed: confirmed,
      locationInfo: locationInfo,
      deviceInfo: deviceInfo,
    );
  }

  @override
  Future<Either<Exception, AttendanceHistory>> getAttendanceHistory({
    int page = 1,
    int limit = 10,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    return await _remoteDataSource.getAttendanceHistory(
      page: page,
      limit: limit,
      startDate: startDate,
      endDate: endDate,
    );
  }

  @override
  Future<Either<Exception, AttendanceStatus>> getAttendanceStatus() async {
    return await _remoteDataSource.getAttendanceStatus();
  }

  @override
  Future<Either<Exception, EmployeeProfile>> getEmployeeProfile() async {
    return await _remoteDataSource.getEmployeeProfile();
  }
}
