import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/employees/domain/entities/create_employee_request.dart';
import 'package:attendance_app/src/features/employees/domain/entities/create_employee_response.dart';
import 'package:attendance_app/src/features/employees/domain/repositories/employees_repository.dart';

class AddEmployeeUseCase {
  final EmployeesRepository _employeesRepository;

  AddEmployeeUseCase(this._employeesRepository);

  FutureEither<CreateEmployeeResponse> call(CreateEmployeeRequest request) async {
    return await _employeesRepository.addEmployee(request);
  }
}