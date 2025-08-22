import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/employees/data/models/employees_response/employees_response_model.dart';
import 'package:attendance_app/src/features/employees/data/models/create_employee_request/create_employee_request_model.dart';
import 'package:attendance_app/src/features/employees/data/models/create_employee_response/create_employee_response_model.dart';
import 'package:attendance_app/src/features/employees/domain/datasources/api/employees_datasource.dart';
import 'package:attendance_app/src/features/employees/domain/entities/employee_entity.dart';
import 'package:attendance_app/src/features/employees/domain/entities/employees_request.dart';
import 'package:attendance_app/src/features/employees/domain/entities/create_employee_request.dart';
import 'package:attendance_app/src/features/employees/domain/entities/create_employee_response.dart';
import 'package:attendance_app/src/features/auth/data/datasources/local/auth_local_datasource.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

class EmployeesDataSourceImpl implements EmployeesDataSource {
  final Dio _dio;
  final AuthLocalDataSource _authLocalDataSource;

  EmployeesDataSourceImpl(this._dio, this._authLocalDataSource);

  @override
  FutureEither<EmployeesResponse> getEmployees(EmployeesRequest request) async {
    try {
      // Obtener token de autenticación
      final tokenResult = await _authLocalDataSource.getToken();
      return tokenResult.fold((failure) => left(failure), (token) async {
        if (token == null) {
          return left(
            const AuthFailure('Token de autenticación no encontrado'),
          );
        }

        final response = await _dio.get(
          '/employees',
          queryParameters: request.toQueryParameters(),
          options: Options(headers: {'Authorization': 'Bearer $token'}),
        );

        if (response.statusCode == 200) {
          final employeesResponseModel = EmployeesResponseModel.fromJson(
            response.data,
          );

          // Verificar si la respuesta indica éxito
          if (employeesResponseModel.success) {
            return right(employeesResponseModel.toDomain());
          } else {
            return left(
              ServerFailure(
                employeesResponseModel.message ?? 'Error al obtener empleados',
              ),
            );
          }
        } else {
          return left(
            ServerFailure(
              'Error del servidor: ${response.statusCode}',
            ),
          );
        }
      });
    } on DioException catch (e) {
      return left(ServerFailure(e.message ?? 'Error de conexión'));
    } catch (e) {
      return left(ServerFailure('Error inesperado: $e'));
    }
  }

  @override
  FutureEither<Employee> getEmployeeById(String id) async {
    try {
      // Obtener token de autenticación
      final tokenResult = await _authLocalDataSource.getToken();
      return tokenResult.fold((failure) => left(failure), (token) async {
        if (token == null) {
          return left(
            const AuthFailure('Token de autenticación no encontrado'),
          );
        }

        final response = await _dio.get(
          '/employees/$id',
          options: Options(headers: {'Authorization': 'Bearer $token'}),
        );

        if (response.statusCode == 200) {
          final employeeModel = EmployeeModel.fromJson(
            response.data['data'],
          );

          return right(employeeModel.toDomain());
        } else {
          return left(
            ServerFailure(
              'Error del servidor: ${response.statusCode}',
            ),
          );
        }
      });
    } on DioException catch (e) {
      return left(ServerFailure(e.message ?? 'Error de conexión'));
    } catch (e) {
      return left(ServerFailure('Error inesperado: $e'));
    }
  }

  @override
  FutureEither<CreateEmployeeResponse> addEmployee(CreateEmployeeRequest request) async {
    try {
      // Obtener token de autenticación
      final tokenResult = await _authLocalDataSource.getToken();
      return tokenResult.fold((failure) => left(failure), (token) async {
        if (token == null) {
          return left(
            const AuthFailure('Token de autenticación no encontrado'),
          );
        }

        // Convertir la request a modelo para serialización
        final requestModel = request.toModel();

        final response = await _dio.post(
          '/employees',
          data: requestModel.toJson(),
          options: Options(headers: {'Authorization': 'Bearer $token'}),
        );

        if (response.statusCode == 201) {
          final createEmployeeResponseModel = CreateEmployeeResponseModel.fromJson(
            response.data,
          );

          // Verificar si la respuesta indica éxito
          if (createEmployeeResponseModel.success) {
            return right(createEmployeeResponseModel.toDomain());
          } else {
            return left(
              ServerFailure(
                createEmployeeResponseModel.message ?? 'Error al crear empleado',
              ),
            );
          }
        } else {
          return left(
            ServerFailure(
              'Error del servidor: ${response.statusCode}',
            ),
          );
        }
      });
    } on DioException catch (e) {
      return left(ServerFailure(e.message ?? 'Error de conexión'));
    } catch (e) {
      return left(ServerFailure('Error inesperado: $e'));
    }
  }
}