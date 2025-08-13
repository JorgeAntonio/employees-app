import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/attendance_history_request.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/attendance_history_response.dart';
import 'package:attendance_app/src/features/attendance/presentation/providers/attendance_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'attendance_history_provider.g.dart';

@riverpod
class AttendanceHistoryNotifier extends _$AttendanceHistoryNotifier {
  @override
  AsyncValue<AttendanceHistoryResponse?> build() {
    return const AsyncValue.data(null);
  }

  Future<void> getAttendanceHistory(AttendanceHistoryRequest request) async {
    state = const AsyncValue.loading();
    
    final useCase = ref.read(getAttendanceHistoryUseCaseProvider);
    final result = await useCase(request);
    
    result.fold(
      (failure) => state = AsyncValue.error(failure, StackTrace.current),
      (response) => state = AsyncValue.data(response),
    );
  }

  Future<void> getAttendanceHistoryForEmployee(
    String employeeId, 
    AttendanceHistoryRequest request
  ) async {
    state = const AsyncValue.loading();
    
    final useCase = ref.read(getAttendanceHistoryForEmployeeUseCaseProvider);
    final result = await useCase(employeeId, request);
    
    result.fold(
      (failure) => state = AsyncValue.error(failure, StackTrace.current),
      (response) => state = AsyncValue.data(response),
    );
  }

  Future<void> getAllAttendanceHistory(AttendanceHistoryRequest request) async {
    state = const AsyncValue.loading();
    
    final useCase = ref.read(getAllAttendanceHistoryUseCaseProvider);
    final result = await useCase(request);
    
    result.fold(
      (failure) => state = AsyncValue.error(failure, StackTrace.current),
      (response) => state = AsyncValue.data(response),
    );
  }

  void clearHistory() {
    state = const AsyncValue.data(null);
  }
}