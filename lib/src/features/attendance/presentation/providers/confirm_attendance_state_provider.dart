import 'package:attendance_app/src/features/attendance/domain/entities/confirm_attendance_request.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/confirm_attendance_response.dart';
import 'package:attendance_app/src/features/attendance/presentation/providers/attendance_providers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'confirm_attendance_state_provider.freezed.dart';
part 'confirm_attendance_state_provider.g.dart';

@freezed
abstract class ConfirmAttendanceState with _$ConfirmAttendanceState {
  const factory ConfirmAttendanceState.initial() = _Initial;
  const factory ConfirmAttendanceState.loading() = _Loading;
  const factory ConfirmAttendanceState.success(
    ConfirmAttendanceResponse response,
  ) = _Success;
  const factory ConfirmAttendanceState.error(String message) = _Error;
}

extension ConfirmAttendanceStateX on ConfirmAttendanceState {
  bool get isLoading => this is _Loading;
}

@riverpod
class ConfirmAttendanceNotifier extends _$ConfirmAttendanceNotifier {
  @override
  ConfirmAttendanceState build() {
    return const ConfirmAttendanceState.initial();
  }

  /// Confirm attendance with code only
  Future<void> confirm({required String code, required bool confirmed}) async {
    ref.invalidateSelf();
    state = const ConfirmAttendanceState.loading();

    final useCase = ref.read(confirmAttendanceUseCaseProvider);
    final result = await useCase(code: code, confirmed: confirmed);

    result.fold(
      (failure) => state = ConfirmAttendanceState.error(failure.message),
      (response) => state = ConfirmAttendanceState.success(response),
    );
  }

  /// Confirm attendance with location data
  Future<void> confirmWithLocation({
    required String code,
    required bool confirmed,
    String? locationId,
    double? latitude,
    double? longitude,
    double? accuracy,
    String? name,
    DeviceInfo? deviceInfo,
  }) async {
    ref.invalidateSelf();
    state = const ConfirmAttendanceState.loading();

    final useCase = ref.read(confirmAttendanceUseCaseProvider);
    final result = await useCase.confirmWithLocation(
      code: code,
      confirmed: confirmed,
      locationId: locationId,
      latitude: latitude,
      longitude: longitude,
      accuracy: accuracy,
      name: name,
      deviceInfo: deviceInfo,
    );

    result.fold(
      (failure) => state = ConfirmAttendanceState.error(failure.message),
      (response) => state = ConfirmAttendanceState.success(response),
    );
  }

  /// Reset state to initial
  void reset() {
    state = const ConfirmAttendanceState.initial();
  }
}
