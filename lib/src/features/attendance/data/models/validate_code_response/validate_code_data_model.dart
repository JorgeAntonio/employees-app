import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/validate_code_response.dart';
import 'employee_model.dart';

part 'validate_code_data_model.freezed.dart';
part 'validate_code_data_model.g.dart';

@freezed
abstract class ValidateCodeDataModel with _$ValidateCodeDataModel {
  const factory ValidateCodeDataModel({
    required EmployeeModel employee,
    required String action,
    required DateTime timestamp,
  }) = _ValidateCodeDataModel;

  factory ValidateCodeDataModel.fromJson(Map<String, dynamic> json) =>
      _$ValidateCodeDataModelFromJson(json);
}

extension ValidateCodeDataModelX on ValidateCodeDataModel {
  ValidateCodeData toDomain() {
    return ValidateCodeData(
      employee: employee.toDomain(),
      action: action,
      timestamp: timestamp,
    );
  }
}