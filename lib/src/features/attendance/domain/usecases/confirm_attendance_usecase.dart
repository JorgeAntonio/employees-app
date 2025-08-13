import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/confirm_attendance_request.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/confirm_attendance_response.dart';
import 'package:attendance_app/src/features/attendance/domain/repositories/attendance_repository.dart';
import 'package:fpdart/fpdart.dart';

class ConfirmAttendanceUseCase {
  final AttendanceRepository _attendanceRepository;

  ConfirmAttendanceUseCase(this._attendanceRepository);

  /// Confirm attendance with code only
  FutureEither<ConfirmAttendanceResponse> call({
    required String code,
    required bool confirmed,
  }) async {
    // Validar que el código no esté vacío
    if (code.trim().isEmpty) {
      return left(const AttendanceFailure('El código no puede estar vacío'));
    }

    final request = ConfirmAttendanceRequest(
      code: code.trim(),
      confirmed: confirmed,
    );

    return await _attendanceRepository.confirmAttendance(request);
  }

  /// Confirm attendance with location data
  FutureEither<ConfirmAttendanceResponse> confirmWithLocation({
    required String code,
    required bool confirmed,
    String? locationId,
    double? latitude,
    double? longitude,
    double? accuracy,
    String? name,
    DeviceInfo? deviceInfo,
  }) async {
    // Validar que el código no esté vacío
    if (code.trim().isEmpty) {
      return left(const AttendanceFailure('El código no puede estar vacío'));
    }

    final request = ConfirmAttendanceRequest(
      code: code.trim(),
      confirmed: confirmed,
      locationId: locationId,
      latitude: latitude,
      longitude: longitude,
      accuracy: accuracy,
      name: name,
      deviceInfo: deviceInfo,
    );

    return await _attendanceRepository.confirmAttendance(request);
  }
}
