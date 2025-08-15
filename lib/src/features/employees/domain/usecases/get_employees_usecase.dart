import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/employees/domain/entities/employee_entity.dart';
import 'package:attendance_app/src/features/employees/domain/repositories/employees_repository.dart';

class GetEmployeesUseCase {
  final EmployeesRepository _employeesRepository;

  GetEmployeesUseCase(this._employeesRepository);

  FutureEither<EmployeesResponse> call() async {
    return await _employeesRepository.getEmployees();
  }
}