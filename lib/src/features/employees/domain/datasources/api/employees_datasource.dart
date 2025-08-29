import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/employees/domain/entities/create_employee_request.dart';
import 'package:attendance_app/src/features/employees/domain/entities/create_employee_response.dart';
import 'package:attendance_app/src/features/employees/domain/entities/daily_attendance_entity.dart';
import 'package:attendance_app/src/features/employees/domain/entities/daily_attendance_request.dart';
import 'package:attendance_app/src/features/employees/domain/entities/employee_entity.dart';
import 'package:attendance_app/src/features/employees/domain/entities/employees_request.dart';

abstract class EmployeesDataSource {
  FutureEither<EmployeesResponse> getEmployees(EmployeesRequest request);
  FutureEither<Employee> getEmployeeById(String id);
  FutureEither<CreateEmployeeResponse> addEmployee(
    CreateEmployeeRequest request,
  );
  FutureEither<DailyAttendanceResponse> getDailyAttendance(
    DailyAttendanceRequest request,
  );
  FutureEither<UpdateUserEmployee> updateEmployee(
    String id,
    CreateEmployeeRequest request,
  );
}
