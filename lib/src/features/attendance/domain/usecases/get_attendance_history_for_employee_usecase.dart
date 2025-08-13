import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/attendance_history_request.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/attendance_history_response.dart';
import 'package:attendance_app/src/features/attendance/domain/repositories/attendance_repository.dart';

class GetAttendanceHistoryForEmployeeUseCase {
  final AttendanceRepository _attendanceRepository;

  GetAttendanceHistoryForEmployeeUseCase(this._attendanceRepository);

  FutureEither<AttendanceHistoryResponse> call(
    String employeeId, 
    AttendanceHistoryRequest request
  ) async {
    return await _attendanceRepository.getAttendanceHistoryForEmployee(employeeId, request);
  }
}