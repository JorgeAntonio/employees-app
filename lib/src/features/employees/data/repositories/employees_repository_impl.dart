import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/employees/data/datasources/api/employees_datasource_impl.dart';
import 'package:attendance_app/src/features/employees/domain/entities/employee_entity.dart';
import 'package:attendance_app/src/features/employees/domain/entities/employees_request.dart';
import 'package:attendance_app/src/features/employees/domain/entities/create_employee_request.dart';
import 'package:attendance_app/src/features/employees/domain/entities/create_employee_response.dart';
import 'package:attendance_app/src/features/employees/domain/entities/daily_attendance_entity.dart';
import 'package:attendance_app/src/features/employees/domain/entities/daily_attendance_request.dart';
import 'package:attendance_app/src/features/employees/domain/repositories/employees_repository.dart';

class EmployeesRepositoryImpl implements EmployeesRepository {
  final EmployeesDataSourceImpl _apiDataSource;

  EmployeesRepositoryImpl({required EmployeesDataSourceImpl apiDataSource})
      : _apiDataSource = apiDataSource;

  @override
  FutureEither<EmployeesResponse> getEmployees(EmployeesRequest request) async {
    return await _apiDataSource.getEmployees(request);
  }

  @override
  FutureEither<Employee> getEmployeeById(String id) async {
    return await _apiDataSource.getEmployeeById(id);
  }

  @override
  FutureEither<CreateEmployeeResponse> addEmployee(CreateEmployeeRequest request) async {
    return await _apiDataSource.addEmployee(request);
  }

  @override
  FutureEither<DailyAttendanceResponse> getDailyAttendance(DailyAttendanceRequest request) async {
    return await _apiDataSource.getDailyAttendance(request);
  }
}