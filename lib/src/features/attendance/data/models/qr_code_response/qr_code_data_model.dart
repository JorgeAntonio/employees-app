import 'package:attendance_app/src/features/attendance/domain/entities/qr_code_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'qr_code_data_model.freezed.dart';
part 'qr_code_data_model.g.dart';

@freezed
abstract class QrCodeDataModel with _$QrCodeDataModel {
  const factory QrCodeDataModel({
    required String qrCode,
    required String manualCode,
    required DateTime expiresAt,
    required String type,
  }) = _QrCodeDataModel;

  factory QrCodeDataModel.fromJson(Map<String, dynamic> json) =>
      _$QrCodeDataModelFromJson(json);
}

extension QrCodeDataModelX on QrCodeDataModel {
  QrCodeData toDomain() => QrCodeData(
        qrCode: qrCode,
        manualCode: manualCode,
        expiresAt: expiresAt,
        type: type,
      );
}