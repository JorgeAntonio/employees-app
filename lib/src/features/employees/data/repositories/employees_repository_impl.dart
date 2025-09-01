import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/core/entities/pagination_response.dart';
import 'package:attendance_app/src/features/employees/data/datasources/api/employees_datasource_impl.dart';
import 'package:attendance_app/src/features/employees/domain/entities/create_employee_request.dart';
import 'package:attendance_app/src/features/employees/domain/entities/create_employee_response.dart';
import 'package:attendance_app/src/features/employees/domain/entities/daily_attendance_entity.dart';
import 'package:attendance_app/src/features/employees/domain/entities/daily_attendance_request.dart';
import 'package:attendance_app/src/features/employees/domain/entities/employee_entity.dart';
import 'package:attendance_app/src/features/employees/domain/entities/employees_request.dart';
import 'package:attendance_app/src/features/employees/domain/entities/update_employee_request.dart';
import 'package:attendance_app/src/features/employees/domain/entities/update_employee_response.dart';
import 'package:attendance_app/src/features/employees/domain/repositories/employees_repository.dart';
import 'package:fpdart/fpdart.dart';

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
  FutureEither<CreateEmployeeResponse> addEmployee(
    CreateEmployeeRequest request,
  ) async {
    return await _apiDataSource.addEmployee(request);
  }

  @override
  FutureEither<DailyAttendanceResponse> getDailyAttendance(
    DailyAttendanceRequest request,
  ) async {
    return await _apiDataSource.getDailyAttendance(request);
  }

  @override
  FutureEither<EmployeesResponse> updateUserEmployee(
    String id,
    CreateEmployeeRequest request,
  ) async {
    try {
      final result = await _apiDataSource.updateEmployee(id, request);
      return result.fold((failure) => left(failure), (updateResult) {
        if (updateResult.success && updateResult.employee != null) {
          // Crear una respuesta de empleados con el empleado actualizado
          final employeeResponse = EmployeesResponse(
            success: true,
            data: EmployeesData(
              employees: [updateResult.employee!],
              pagination: PaginationResponse(
                page: 1,
                limit: 1,
                total: 1,
                totalPages: 1,
              ),
            ),
            message: updateResult.message,
          );
          return right(employeeResponse);
        } else {
          return left(
            ServerFailure(
              updateResult.message ?? 'Error al actualizar empleado',
            ),
          );
        }
      });
    } catch (e) {
      return left(ServerFailure('Error inesperado: $e'));
    }
  }

  @override
  FutureEither<UpdateEmployeeResponse> updateOnlyEmployee(
    String id,
    UpdateEmployeeRequest request,
  ) async {
    return await _apiDataSource.updateOnlyEmployee(id, request);
  }
}
