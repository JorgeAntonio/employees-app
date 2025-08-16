import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/employees/domain/entities/employee_entity.dart';

abstract class EmployeesDataSource {
  FutureEither<EmployeesResponse> getEmployees();
  FutureEither<Employee> getEmployeeById(String id);
}