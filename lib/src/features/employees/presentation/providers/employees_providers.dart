import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/employees/data/datasources/api/employees_datasource_impl.dart';
import 'package:attendance_app/src/features/employees/data/repositories/employees_repository_impl.dart';
import 'package:attendance_app/src/features/employees/domain/repositories/employees_repository.dart';
import 'package:attendance_app/src/features/employees/domain/usecases/get_employees_usecase.dart';
import 'package:attendance_app/src/features/employees/domain/usecases/add_employee_usecase.dart';
import 'package:attendance_app/src/features/auth/presentation/providers/auth_providers.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'employees_providers.g.dart';

// Dio Provider
@riverpod
Dio employeesDio(Ref ref) {
  return DioConfig.createDio(enableLogging: true);
}

// API DataSource Provider
@riverpod
EmployeesDataSourceImpl employeesApiDataSource(Ref ref) {
  final dio = ref.watch(employeesDioProvider);
  final authLocalDataSource = ref.watch(authLocalDataSourceProvider);
  return EmployeesDataSourceImpl(dio, authLocalDataSource);
}

// Repository Provider
@riverpod
EmployeesRepository employeesRepository(Ref ref) {
  final apiDataSource = ref.watch(employeesApiDataSourceProvider);

  return EmployeesRepositoryImpl(
    apiDataSource: apiDataSource,
  );
}

// Use Cases Providers
@riverpod
GetEmployeesUseCase getEmployeesUseCase(Ref ref) {
  final employeesRepository = ref.watch(employeesRepositoryProvider);
  return GetEmployeesUseCase(employeesRepository);
}

@riverpod
AddEmployeeUseCase addEmployeeUseCase(Ref ref) {
  final employeesRepository = ref.watch(employeesRepositoryProvider);
  return AddEmployeeUseCase(employeesRepository);
}