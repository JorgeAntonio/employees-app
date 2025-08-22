import 'package:attendance_app/src/features/auth/presentation/providers/auth_providers.dart';
import 'package:attendance_app/src/features/shift/data/datasources/api/shift_datasource_impl.dart';
import 'package:attendance_app/src/features/shift/data/repositories/shift_repository_impl.dart';
import 'package:attendance_app/src/features/shift/domain/entities/shift.dart';
import 'package:attendance_app/src/features/shift/domain/usecases/get_shifts_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Provider para el datasource (usando Dio básico sin interceptores para debugging)
final shiftDataSourceProvider = Provider<ShiftDataSourceImpl>((ref) {
  final authLocalDataSource = ref.watch(authLocalDataSourceProvider);
  return ShiftDataSourceImpl.withBasicDio(authLocalDataSource);
});

// Provider para el repository
final shiftRepositoryProvider = Provider<ShiftRepositoryImpl>((ref) {
  final apiDataSource = ref.watch(shiftDataSourceProvider);
  return ShiftRepositoryImpl(apiDataSource: apiDataSource);
});

// Provider para el use case
final getShiftsUseCaseProvider = Provider<GetShiftsUseCase>((ref) {
  final repository = ref.watch(shiftRepositoryProvider);
  return GetShiftsUseCase(repository: repository);
});

// Provider para obtener los turnos
final shiftsProvider = FutureProvider.family<ShiftData, ShiftParams>((
  ref,
  params,
) async {
  final useCase = ref.watch(getShiftsUseCaseProvider);
  final result = await useCase(page: params.page, limit: params.limit);
  return result.fold(
    (failure) => throw Exception(failure.message),
    (shiftData) => shiftData,
  );
});

// Provider para mantener los turnos cargados para el dropdown (con caché)
final shiftsForDropdownProvider = FutureProvider<List<Shift>>((ref) async {
  final useCase = ref.watch(getShiftsUseCaseProvider);
  final result = await useCase(page: 1, limit: 100);

  return result.fold(
    (failure) {
      throw Exception(failure.message);
    },
    (shiftData) {
      return shiftData.shifts;
    },
  );
});

// Clase para parámetros del provider
class ShiftParams {
  final int page;
  final int limit;

  const ShiftParams({this.page = 1, this.limit = 10});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ShiftParams && other.page == page && other.limit == limit;
  }

  @override
  int get hashCode => page.hashCode ^ limit.hashCode;
}
