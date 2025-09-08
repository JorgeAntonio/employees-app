import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/employees/domain/entities/create_employee_request.dart';
import 'package:attendance_app/src/features/employees/domain/entities/employee_entity.dart';
import 'package:attendance_app/src/features/employees/domain/repositories/employees_repository.dart';

class UpdateEmployeeUseCase {
  final EmployeesRepository _repository;

  UpdateEmployeeUseCase(this._repository);

  FutureEither<EmployeesResponse> call(
    String id,
    CreateEmployeeRequest request,
  ) async {
    return await _repository.updateUserEmployee(id, request);
  }
}
