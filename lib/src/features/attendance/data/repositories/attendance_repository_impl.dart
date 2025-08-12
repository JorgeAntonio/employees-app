import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/attendance/data/datasources/api/attendance_datasource_impl.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/qr_code_response.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/validate_code_request.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/validate_code_response.dart';
import 'package:attendance_app/src/features/attendance/domain/repositories/attendance_repository.dart';

class AttendanceRepositoryImpl implements AttendanceRepository {
  final AttendanceDataSourceImpl _apiDataSource;

  AttendanceRepositoryImpl({required AttendanceDataSourceImpl apiDataSource})
    : _apiDataSource = apiDataSource;

  @override
  FutureEither<QrCodeResponse> generateCheckInQr() async {
    return await _apiDataSource.generateCheckInQr();
  }

  @override
  FutureEither<QrCodeResponse> generateCheckInQrForEmployee(
    String employeeId,
  ) async {
    return await _apiDataSource.generateCheckInQrForEmployee(employeeId);
  }

  @override
  FutureEither<QrCodeResponse> generateCheckOutQr() async {
    return await _apiDataSource.generateCheckOutQr();
  }

  @override
  FutureEither<QrCodeResponse> generateCheckOutQrForEmployee(
    String employeeId,
  ) async {
    return await _apiDataSource.generateCheckOutQrForEmployee(employeeId);
  }

  @override
  FutureEither<ValidateCodeResponse> validateCode(ValidateCodeRequest request) async {
    return await _apiDataSource.validateCode(request);
  }
}
