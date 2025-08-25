import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/auth/presentation/providers/auth_providers.dart';
import 'package:attendance_app/src/features/employees/data/datasources/api/employees_datasource_impl.dart';
import 'package:attendance_app/src/features/employees/data/repositories/employees_repository_impl.dart';
import 'package:attendance_app/src/features/employees/domain/entities/employee_entity.dart';
import 'package:attendance_app/src/features/employees/domain/entities/employees_request.dart';
import 'package:attendance_app/src/features/employees/domain/entities/daily_attendance_entity.dart';
import 'package:attendance_app/src/features/employees/domain/entities/daily_attendance_request.dart';
import 'package:attendance_app/src/features/employees/domain/repositories/employees_repository.dart';
import 'package:attendance_app/src/features/employees/domain/usecases/add_employee_usecase.dart';
import 'package:attendance_app/src/features/employees/domain/usecases/get_employees_usecase.dart';
import 'package:attendance_app/src/features/employees/domain/usecases/get_daily_attendance_usecase.dart';
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

@riverpod
GetDailyAttendanceUseCase getDailyAttendanceUseCase(Ref ref) {
  final employeesRepository = ref.watch(employeesRepositoryProvider);
  return GetDailyAttendanceUseCase(employeesRepository);
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

// Notifier para manejar la lista acumulativa de empleados (scroll infinito)
@riverpod
class EmployeesNotifier extends _$EmployeesNotifier {
  @override
  List<Employee> build() {
    return [];
  }

  Future<void> loadMoreEmployees(EmployeesRequest request) async {
    try {
      final getEmployeesUseCase = ref.read(getEmployeesUseCaseProvider);
      final result = await getEmployeesUseCase(request);

      result.fold((failure) => throw Exception(failure.message), (
        employeesResponse,
      ) {
        final employees = employeesResponse.data?.employees ?? [];
        if (request.page == 1) {
          // Primera página, reemplazar la lista
          state = employees;
        } else {
          // Páginas siguientes, agregar a la lista existente
          state = [...state, ...employees];
        }
      });
    } catch (e) {
      // En caso de error, mantener el estado actual
      rethrow;
    }
  }

  void clearEmployees() {
    state = [];
  }

  // Método para obtener la respuesta completa (útil para obtener metadatos de paginación)
  Future<EmployeesResponse?> getEmployeesResponse(
    EmployeesRequest request,
  ) async {
    try {
      final getEmployeesUseCase = ref.read(getEmployeesUseCaseProvider);
      final result = await getEmployeesUseCase(request);

      return result.fold(
        (failure) => null,
        (employeesResponse) => employeesResponse,
      );
    } catch (e) {
      return null;
    }
  }
}

// Nuevo notifier para manejar estados con AsyncValue
@riverpod
class EmployeesStateNotifier extends _$EmployeesStateNotifier {
  @override
  AsyncValue<EmployeesResponse?> build() {
    return const AsyncValue.loading();
  }

  Future<void> loadEmployees(EmployeesRequest request) async {
    // Mostrar loading solo en la carga inicial
    if (request.page == 1) {
      state = const AsyncValue.loading();
    }

    try {
      final getEmployeesUseCase = ref.read(getEmployeesUseCaseProvider);
      final result = await getEmployeesUseCase(request);

      result.fold(
        (failure) {
          state = AsyncValue.error(
            Exception(failure.message),
            StackTrace.current,
          );
        },
        (employeesResponse) {
          state = AsyncValue.data(employeesResponse);
        },
      );
    } catch (e, stackTrace) {
      state = AsyncValue.error(e, stackTrace);
    }
  }

  Future<void> loadMoreEmployees(EmployeesRequest request) async {
    try {
      final getEmployeesUseCase = ref.read(getEmployeesUseCaseProvider);
      final result = await getEmployeesUseCase(request);

      result.fold(
        (failure) {
          // En caso de error al cargar más, mantener el estado actual
          throw Exception(failure.message);
        },
        (newResponse) {
          // Combinar los datos existentes con los nuevos
          final currentState = state.value;
          if (currentState != null && currentState.data != null) {
            final currentEmployees = currentState.data!.employees;
            final newEmployees = newResponse.data?.employees ?? [];

            final combinedResponse = EmployeesResponse(
              success: newResponse.success,
              message: newResponse.message,
              data: EmployeesData(
                employees: [...currentEmployees, ...newEmployees],
                pagination: newResponse.data!.pagination,
              ),
            );

            state = AsyncValue.data(combinedResponse);
          } else {
            state = AsyncValue.data(newResponse);
          }
        },
      );
    } catch (e) {
      // No cambiar el estado en caso de error al cargar más
      rethrow;
    }
  }

  void clearEmployees() {
    state = const AsyncValue.loading();
  }
}

// Daily Attendance Providers

// Estado para manejar la request de asistencia diaria
@riverpod
class DailyAttendanceRequestNotifier extends _$DailyAttendanceRequestNotifier {
  @override
  DailyAttendanceRequest build() {
    final today = DateTime.now();
    final dateString = '${today.year.toString().padLeft(4, '0')}-${today.month.toString().padLeft(2, '0')}-${today.day.toString().padLeft(2, '0')}';
    return DailyAttendanceRequest(
      date: dateString,
      page: 1,
      limit: 10,
    );
  }

  void updateRequest(DailyAttendanceRequest newRequest) {
    state = newRequest;
  }

  void updateDate(DateTime date) {
    final dateString = '${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';
    state = state.copyWith(date: dateString, page: 1);
  }

  void updatePage(int page) {
    state = state.copyWith(page: page);
  }

  void updateFilters({String? department, String? position}) {
    state = state.copyWith(
      page: 1,
      department: department,
      position: position,
    );
  }
}

// Provider para obtener la asistencia diaria
@riverpod
Future<DailyAttendanceResponse> dailyAttendance(Ref ref) async {
  final getDailyAttendanceUseCase = ref.watch(getDailyAttendanceUseCaseProvider);
  final request = ref.watch(dailyAttendanceRequestNotifierProvider);
  final result = await getDailyAttendanceUseCase(request);

  return result.fold(
    (failure) => throw Exception(failure.message),
    (success) => success,
  );
}

// Notifier para manejar la lista acumulativa de asistencia (scroll infinito)
@riverpod
class DailyAttendanceNotifier extends _$DailyAttendanceNotifier {
  @override
  AsyncValue<DailyAttendanceResponse?> build() {
    return const AsyncValue.loading();
  }

  Future<void> loadDailyAttendance(DailyAttendanceRequest request) async {
    try {
      state = const AsyncValue.loading();
      final getDailyAttendanceUseCase = ref.read(getDailyAttendanceUseCaseProvider);
      final result = await getDailyAttendanceUseCase(request);

      result.fold(
        (failure) {
          state = AsyncValue.error(failure.message, StackTrace.current);
        },
        (dailyAttendanceResponse) {
          state = AsyncValue.data(dailyAttendanceResponse);
        },
      );
    } catch (e, stackTrace) {
      state = AsyncValue.error(e, stackTrace);
    }
  }

  Future<void> loadMoreAttendance(DailyAttendanceRequest request) async {
    try {
      final getDailyAttendanceUseCase = ref.read(getDailyAttendanceUseCaseProvider);
      final result = await getDailyAttendanceUseCase(request);

      result.fold(
        (failure) {
          // En caso de error al cargar más, mantener el estado actual
          throw Exception(failure.message);
        },
        (newResponse) {
          // Combinar los datos existentes con los nuevos
          final currentState = state.value;
          if (currentState != null && currentState.data != null) {
            final currentEmployees = currentState.data!.employees;
            final newEmployees = newResponse.data?.employees ?? [];

            final combinedResponse = DailyAttendanceResponse(
              success: newResponse.success,
              data: DailyAttendanceData(
                date: newResponse.data!.date,
                employees: [...currentEmployees, ...newEmployees],
                stats: newResponse.data!.stats,
                pagination: newResponse.data!.pagination,
                filters: newResponse.data!.filters,
              ),
            );

            state = AsyncValue.data(combinedResponse);
          } else {
            state = AsyncValue.data(newResponse);
          }
        },
      );
    } catch (e) {
      // No cambiar el estado en caso de error al cargar más
      rethrow;
    }
  }

  void clearAttendance() {
    state = const AsyncValue.loading();
  }
}
