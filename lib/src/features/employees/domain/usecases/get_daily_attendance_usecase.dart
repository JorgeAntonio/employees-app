import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/employees/domain/entities/daily_attendance_entity.dart';
import 'package:attendance_app/src/features/employees/domain/entities/daily_attendance_request.dart';
import 'package:attendance_app/src/features/employees/domain/repositories/employees_repository.dart';

class GetDailyAttendanceUseCase {
  final EmployeesRepository _employeesRepository;

  GetDailyAttendanceUseCase(this._employeesRepository);

  FutureEither<DailyAttendanceResponse> call(DailyAttendanceRequest request) async {
    return await _employeesRepository.getDailyAttendance(request);
  }
}