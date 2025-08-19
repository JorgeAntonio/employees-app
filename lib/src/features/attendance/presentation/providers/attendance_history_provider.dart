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

  Future<void> loadMoreAttendanceHistory(AttendanceHistoryRequest request) async {
    final currentState = state;
    if (!currentState.hasValue) return;

    final useCase = ref.read(getAttendanceHistoryUseCaseProvider);
    final result = await useCase(request);

    result.fold(
      (failure) => state = AsyncValue.error(failure, StackTrace.current),
      (newResponse) {
        final currentResponse = currentState.value;
        if (currentResponse?.data != null && newResponse.data != null) {
          // Combine existing attendances with new ones
          final combinedAttendances = [
            ...currentResponse!.data!.attendances,
            ...newResponse.data!.attendances,
          ];
          
          // Create new response with combined data
          final combinedResponse = AttendanceHistoryResponse(
            success: newResponse.success,
            message: newResponse.message,
            data: AttendanceHistoryData(
              attendances: combinedAttendances,
              pagination: newResponse.data!.pagination, // Use new pagination info
            ),
          );
          
          state = AsyncValue.data(combinedResponse);
        } else {
          state = AsyncValue.data(newResponse);
        }
      },
    );
  }

  Future<void> getAttendanceHistoryForEmployee(
    String employeeId,
    AttendanceHistoryRequest request,
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
