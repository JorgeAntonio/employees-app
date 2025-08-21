import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/employees/domain/entities/employee_entity.dart';
import 'package:attendance_app/src/features/employees/domain/entities/create_employee_request.dart';
import 'package:attendance_app/src/features/employees/domain/entities/create_employee_response.dart';

abstract class EmployeesRepository {
  FutureEither<EmployeesResponse> getEmployees();
  FutureEither<Employee> getEmployeeById(String id);
  FutureEither<CreateEmployeeResponse> addEmployee(CreateEmployeeRequest request);
}
