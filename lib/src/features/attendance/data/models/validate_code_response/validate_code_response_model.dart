import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/validate_code_response.dart';
import 'validate_code_data_model.dart';

part 'validate_code_response_model.freezed.dart';
part 'validate_code_response_model.g.dart';

@freezed
abstract class ValidateCodeResponseModel with _$ValidateCodeResponseModel {
  const factory ValidateCodeResponseModel({
    required bool success,
    ValidateCodeDataModel? data,
    String? message,
  }) = _ValidateCodeResponseModel;

  factory ValidateCodeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ValidateCodeResponseModelFromJson(json);
}

extension ValidateCodeResponseModelX on ValidateCodeResponseModel {
  ValidateCodeResponse toDomain() {
    return ValidateCodeResponse(
      success: success,
      data: data?.toDomain(),
      message: message,
    );
  }
}