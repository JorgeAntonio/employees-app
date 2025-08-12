import 'package:attendance_app/src/features/attendance/domain/entities/qr_code_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'qr_code_data_model.dart';

part 'qr_code_response_model.freezed.dart';
part 'qr_code_response_model.g.dart';

@freezed
abstract class QrCodeResponseModel with _$QrCodeResponseModel {
  const factory QrCodeResponseModel({
    required bool success,
    required QrCodeDataModel data,
  }) = _QrCodeResponseModel;

  factory QrCodeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$QrCodeResponseModelFromJson(json);
}

extension QrCodeResponseModelX on QrCodeResponseModel {
  QrCodeResponse toDomain() =>
      QrCodeResponse(success: success, data: data.toDomain());
}