import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/validate_code_request.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/validate_code_response.dart';
import 'package:attendance_app/src/features/attendance/domain/repositories/attendance_repository.dart';
import 'package:fpdart/fpdart.dart';

class ValidateCodeUseCase {
  final AttendanceRepository _attendanceRepository;

  ValidateCodeUseCase(this._attendanceRepository);

  /// Validate QR code or manual code
  FutureEither<ValidateCodeResponse> call(ValidateCodeRequest request) async {
    // Validate input
    if (request.code.isEmpty) {
      return left(const AttendanceFailure('El código es requerido'));
    }

    return await _attendanceRepository.validateCode(request);
  }

  /// Validate code with location data
  FutureEither<ValidateCodeResponse> callWithLocation({
    required String code,
    required double latitude,
    required double longitude,
    double? accuracy,
  }) async {
    final request = ValidateCodeRequest(
      code: code,
      latitude: latitude,
      longitude: longitude,
      accuracy: accuracy,
    );

    return call(request);
  }

  /// Validate code without location data
  FutureEither<ValidateCodeResponse> callWithoutLocation(String code) async {
    final request = ValidateCodeRequest(code: code);
    return call(request);
  }
}