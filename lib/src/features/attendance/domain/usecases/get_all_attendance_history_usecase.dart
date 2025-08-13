import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/attendance_history_request.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/attendance_history_response.dart';
import 'package:attendance_app/src/features/attendance/domain/repositories/attendance_repository.dart';

class GetAllAttendanceHistoryUseCase {
  final AttendanceRepository _attendanceRepository;

  GetAllAttendanceHistoryUseCase(this._attendanceRepository);

  FutureEither<AttendanceHistoryResponse> call(AttendanceHistoryRequest request) async {
    return await _attendanceRepository.getAllAttendanceHistory(request);
  }
}