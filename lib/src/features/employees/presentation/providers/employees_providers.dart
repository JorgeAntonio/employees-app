import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/auth/presentation/providers/auth_providers.dart';
import 'package:attendance_app/src/features/employees/data/datasources/api/employees_datasource_impl.dart';
import 'package:attendance_app/src/features/employees/data/repositories/employees_repository_impl.dart';
import 'package:attendance_app/src/features/employees/domain/entities/employee_entity.dart';
import 'package:attendance_app/src/features/employees/domain/entities/employees_request.dart';
import 'package:attendance_app/src/features/employees/domain/repositories/employees_repository.dart';
import 'package:attendance_app/src/features/employees/domain/usecases/add_employee_usecase.dart';
import 'package:attendance_app/src/features/employees/domain/usecases/get_employees_usecase.dart';
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

  return EmployeesRepositoryImpl(apiDataSource: apiDataSource);
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

// Estado para manejar la paginación
@riverpod
class EmployeesRequestNotifier extends _$EmployeesRequestNotifier {
  @override
  EmployeesRequest build() {
    return EmployeesRequest(page: 1, limit: 10);
  }

  void updateRequest(EmployeesRequest newRequest) {
    state = newRequest;
  }

  void updatePage(int page) {
    state = state.copyWith(page: page);
  }

  void updateSearch(String? search) {
    state = state.copyWith(page: 1, search: search);
  }

  void updateFilters({String? department, String? position}) {
    state = state.copyWith(page: 1, department: department, position: position);
  }
}

@riverpod
Future<EmployeesResponse> employees(Ref ref) async {
  final getEmployeesUseCase = ref.watch(getEmployeesUseCaseProvider);
  final request = ref.watch(employeesRequestNotifierProvider);
  final result = await getEmployeesUseCase(request);

  return result.fold(
    (failure) => throw Exception(failure.message),
    (success) => success,
  );
}
