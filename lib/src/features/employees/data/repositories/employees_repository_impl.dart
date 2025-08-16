import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/employees/data/datasources/api/employees_datasource_impl.dart';
import 'package:attendance_app/src/features/employees/domain/entities/employee_entity.dart';
import 'package:attendance_app/src/features/employees/domain/repositories/employees_repository.dart';

class EmployeesRepositoryImpl implements EmployeesRepository {
  final EmployeesDataSourceImpl _apiDataSource;

  EmployeesRepositoryImpl({required EmployeesDataSourceImpl apiDataSource})
      : _apiDataSource = apiDataSource;

  @override
  FutureEither<EmployeesResponse> getEmployees() async {
    return await _apiDataSource.getEmployees();
  }

  @override
  FutureEither<Employee> getEmployeeById(String id) async {
    return await _apiDataSource.getEmployeeById(id);
  }
}