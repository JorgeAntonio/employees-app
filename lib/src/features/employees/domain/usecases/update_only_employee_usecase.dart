import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/employees/domain/entities/update_employee_request.dart';
import 'package:attendance_app/src/features/employees/domain/entities/update_employee_response.dart';
import 'package:attendance_app/src/features/employees/domain/repositories/employees_repository.dart';

class UpdateOnlyEmployeeUseCase {
  final EmployeesRepository _repository;

  UpdateOnlyEmployeeUseCase(this._repository);

  FutureEither<UpdateEmployeeResponse> call(
    String id,
    UpdateEmployeeRequest request,
  ) async {
    return await _repository.updateOnlyEmployee(id, request);
  }
}
