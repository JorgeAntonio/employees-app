import 'package:attendance_app/src/features/attendance/domain/entities/validate_code_request.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'validate_code_request_model.freezed.dart';
part 'validate_code_request_model.g.dart';

@freezed
abstract class ValidateCodeRequestModel with _$ValidateCodeRequestModel {
  const factory ValidateCodeRequestModel({
    required String code,
    double? latitude,
    double? longitude,
    double? accuracy,
  }) = _ValidateCodeRequestModel;

  factory ValidateCodeRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ValidateCodeRequestModelFromJson(json);
}

extension ValidateCodeRequestModelX on ValidateCodeRequestModel {
  ValidateCodeRequest toDomain() {
    return ValidateCodeRequest(
      code: code,
      latitude: latitude,
      longitude: longitude,
      accuracy: accuracy,
    );
  }
}

extension ValidateCodeRequestX on ValidateCodeRequest {
  ValidateCodeRequestModel toModel() {
    return ValidateCodeRequestModel(
      code: code,
      latitude: latitude,
      longitude: longitude,
      accuracy: accuracy,
    );
  }
}
