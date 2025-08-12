import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/qr_code_response.dart';
import 'package:attendance_app/src/features/attendance/presentation/providers/attendance_providers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'qr_code_state_provider.freezed.dart';
part 'qr_code_state_provider.g.dart';

@freezed
class QrCodeState with _$QrCodeState {
  const factory QrCodeState.initial() = _Initial;
  const factory QrCodeState.loading() = _Loading;
  const factory QrCodeState.success(QrCodeResponse qrCodeResponse) = _Success;
  const factory QrCodeState.error(String message) = _Error;
}

@riverpod
class QrCodeNotifier extends _$QrCodeNotifier {
  @override
  QrCodeState build() {
    return const QrCodeState.initial();
  }

  /// Generate QR code for check-in (for employees)
  Future<void> generateCheckInQr() async {
    state = const QrCodeState.loading();

    final useCase = ref.read(generateCheckInQrUseCaseProvider);
    final result = await useCase();

    result.fold(
      (failure) => state = QrCodeState.error(failure.message),
      (qrCodeResponse) => state = QrCodeState.success(qrCodeResponse),
    );
  }

  /// Generate QR code for check-in for specific employee (for admins)
  Future<void> generateCheckInQrForEmployee(String employeeId) async {
    state = const QrCodeState.loading();

    final useCase = ref.read(generateCheckInQrUseCaseProvider);
    final result = await useCase.callForEmployee(employeeId);

    result.fold(
      (failure) => state = QrCodeState.error(failure.message),
      (qrCodeResponse) => state = QrCodeState.success(qrCodeResponse),
    );
  }

  /// Reset state to initial
  void reset() {
    state = const QrCodeState.initial();
  }
}