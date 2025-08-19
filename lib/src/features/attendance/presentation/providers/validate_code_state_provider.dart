import 'package:attendance_app/src/features/attendance/domain/entities/validate_code_request.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/validate_code_response.dart';
import 'package:attendance_app/src/features/attendance/presentation/providers/attendance_providers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'validate_code_state_provider.freezed.dart';
part 'validate_code_state_provider.g.dart';

@freezed
class ValidateCodeState with _$ValidateCodeState {
  const factory ValidateCodeState.initial() = _Initial;
  const factory ValidateCodeState.loading() = _Loading;
  const factory ValidateCodeState.success(ValidateCodeResponse response) =
      _Success;
  const factory ValidateCodeState.error(String message) = _Error;
}

@riverpod
class ValidateCodeNotifier extends _$ValidateCodeNotifier {
  @override
  ValidateCodeState build() {
    return const ValidateCodeState.initial();
  }

  /// Validate QR code or manual code
  Future<void> validateCode(ValidateCodeRequest request) async {
    try {
      state = const ValidateCodeState.loading();

      final useCase = ref.read(validateCodeUseCaseProvider);
      final result = await useCase(request);

      result.fold(
        (failure) {
          state = ValidateCodeState.error(failure.message);
        },
        (response) {
          state = ValidateCodeState.success(response);
        },
      );
    } catch (e) {
      // Solo capturar errores realmente inesperados, no DioException que ya maneja el datasource
      state = ValidateCodeState.error('Error del sistema: ${e.toString()}');
    }
  }

  /// Validate code with location data
  Future<void> validateCodeWithLocation({
    required String code,
    required double latitude,
    required double longitude,
    double? accuracy,
  }) async {
    final request = ValidateCodeRequest(
      code: code,
      latitude: latitude,
      longitude: longitude,
      accuracy: accuracy,
    );

    await validateCode(request);
  }

  /// Validate code without location data
  Future<void> validateCodeWithoutLocation(String code) async {
    final request = ValidateCodeRequest(code: code);
    await validateCode(request);
  }

  /// Reset state to initial
  void reset() {
    state = const ValidateCodeState.initial();
  }
}
