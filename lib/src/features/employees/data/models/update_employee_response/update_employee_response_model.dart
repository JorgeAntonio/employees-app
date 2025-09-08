import 'package:attendance_app/src/features/employees/data/models/employees_response/employees_response_model.dart';
import 'package:attendance_app/src/features/employees/domain/entities/employee_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_employee_response_model.freezed.dart';
part 'update_employee_response_model.g.dart';

@freezed
abstract class UpdateEmployeeResponseModel with _$UpdateEmployeeResponseModel {
  const factory UpdateEmployeeResponseModel({
    required bool success,
    EmployeeModel? data,
    String? message,
  }) = _UpdateEmployeeResponseModel;

  factory UpdateEmployeeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateEmployeeResponseModelFromJson(json);
}

// Extension para convertir a entidad de dominio
extension UpdateEmployeeResponseModelX on UpdateEmployeeResponseModel {
  UpdateUserEmployee toDomain() {
    return UpdateUserEmployee(
      success: success,
      employee: data?.toDomain(),
      message: message,
    );
  }
}
