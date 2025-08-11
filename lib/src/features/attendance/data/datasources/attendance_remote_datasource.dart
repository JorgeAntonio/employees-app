import 'package:attendance_app/src/features/attendance/data/models/attendance_models.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/attendance_entities.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

abstract class AttendanceRemoteDataSource {
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

class AttendanceRemoteDataSourceImpl implements AttendanceRemoteDataSource {
  final Dio _dio;

  // Token de prueba - esto se reemplazará con el token real de autenticación
  static const String _testToken =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJlbXAtMTIzIiwibmFtZSI6Ikp1YW4gUGVyZXoiLCJpYXQiOjE1MTYyMzkwMjJ9.test';

  AttendanceRemoteDataSourceImpl(this._dio) {
    _dio.options.headers['Authorization'] = 'Bearer $_testToken';
    _dio.options.baseUrl =
        'https://api.example.com/api/v1'; // Cambiar por la URL real
  }

  @override
  Future<Either<Exception, QRCode>> generateCheckInQR() async {
    try {
      final response = await _dio.post('/attendance/checkin/qr');

      if (response.statusCode == 200 && response.data['success'] == true) {
        final qrCodeModel = QRCodeModel.fromJson(response.data['data']);
        return Right(qrCodeModel.toEntity());
      } else {
        return Left(Exception('Failed to generate check-in QR code'));
      }
    } on DioException catch (e) {
      return Left(Exception('Network error: ${e.message}'));
    } catch (e) {
      return Left(Exception('Unexpected error: $e'));
    }
  }

  @override
  Future<Either<Exception, QRCode>> generateCheckOutQR() async {
    try {
      final response = await _dio.post('/attendance/checkout/qr');

      if (response.statusCode == 200 && response.data['success'] == true) {
        final qrCodeModel = QRCodeModel.fromJson(response.data['data']);
        return Right(qrCodeModel.toEntity());
      } else {
        return Left(Exception('Failed to generate check-out QR code'));
      }
    } on DioException catch (e) {
      return Left(Exception('Network error: ${e.message}'));
    } catch (e) {
      return Left(Exception('Unexpected error: $e'));
    }
  }

  @override
  Future<Either<Exception, AttendanceValidation>> validateCode(
    String code,
  ) async {
    try {
      final response = await _dio.post(
        '/attendance/validate',
        data: {'code': code},
      );

      if (response.statusCode == 200 && response.data['success'] == true) {
        final validationModel = AttendanceValidationModel.fromJson(
          response.data['data'],
        );
        return Right(validationModel.toEntity());
      } else {
        return Left(Exception('Failed to validate code'));
      }
    } on DioException catch (e) {
      return Left(Exception('Network error: ${e.message}'));
    } catch (e) {
      return Left(Exception('Unexpected error: $e'));
    }
  }

  @override
  Future<Either<Exception, AttendanceRecord>> confirmAttendance({
    required String code,
    bool confirmed = true,
    LocationInfo? locationInfo,
    DeviceInfo? deviceInfo,
  }) async {
    try {
      final Map<String, dynamic> data = {'code': code, 'confirmed': confirmed};

      if (locationInfo != null) {
        if (locationInfo.locationId != null) {
          data['locationId'] = locationInfo.locationId;
        } else {
          data['latitude'] = locationInfo.latitude;
          data['longitude'] = locationInfo.longitude;
          data['accuracy'] = locationInfo.accuracy;
          data['name'] = locationInfo.name;
        }
      }

      if (deviceInfo != null) {
        data['deviceInfo'] = {
          'name': deviceInfo.name,
          'os': deviceInfo.os,
          'browser': deviceInfo.browser,
          'userAgent': deviceInfo.userAgent,
        };
      }

      final response = await _dio.post('/attendance/confirm', data: data);

      if (response.statusCode == 200 && response.data['success'] == true) {
        final recordModel = AttendanceRecordModel.fromJson(
          response.data['data'],
        );
        return Right(recordModel.toEntity());
      } else {
        return Left(Exception('Failed to confirm attendance'));
      }
    } on DioException catch (e) {
      return Left(Exception('Network error: ${e.message}'));
    } catch (e) {
      return Left(Exception('Unexpected error: $e'));
    }
  }

  @override
  Future<Either<Exception, AttendanceHistory>> getAttendanceHistory({
    int page = 1,
    int limit = 10,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    try {
      final Map<String, dynamic> queryParameters = {
        'page': page,
        'limit': limit,
      };

      if (startDate != null) {
        queryParameters['startDate'] = startDate.toIso8601String().split(
          'T',
        )[0];
      }
      if (endDate != null) {
        queryParameters['endDate'] = endDate.toIso8601String().split('T')[0];
      }

      final response = await _dio.get(
        '/attendance/history/me',
        queryParameters: queryParameters,
      );

      if (response.statusCode == 200 && response.data['success'] == true) {
        final historyModel = AttendanceHistoryModel.fromJson(
          response.data['data'],
        );
        return Right(historyModel.toEntity());
      } else {
        return Left(Exception('Failed to get attendance history'));
      }
    } on DioException catch (e) {
      return Left(Exception('Network error: ${e.message}'));
    } catch (e) {
      return Left(Exception('Unexpected error: $e'));
    }
  }

  @override
  Future<Either<Exception, AttendanceStatus>> getAttendanceStatus() async {
    try {
      final response = await _dio.get('/attendance/status/me');

      if (response.statusCode == 200 && response.data['success'] == true) {
        final statusModel = AttendanceStatusModel.fromJson(
          response.data['data'],
        );
        return Right(statusModel.toEntity());
      } else {
        return Left(Exception('Failed to get attendance status'));
      }
    } on DioException catch (e) {
      return Left(Exception('Network error: ${e.message}'));
    } catch (e) {
      return Left(Exception('Unexpected error: $e'));
    }
  }

  @override
  Future<Either<Exception, EmployeeProfile>> getEmployeeProfile() async {
    try {
      final response = await _dio.get('/attendance/profile');

      if (response.statusCode == 200 && response.data['success'] == true) {
        final profileModel = EmployeeProfileModel.fromJson(
          response.data['data'],
        );
        return Right(profileModel.toEntity());
      } else {
        return Left(Exception('Failed to get employee profile'));
      }
    } on DioException catch (e) {
      return Left(Exception('Network error: ${e.message}'));
    } catch (e) {
      return Left(Exception('Unexpected error: $e'));
    }
  }
}
