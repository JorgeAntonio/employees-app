import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:attendance_app/src/features/attendance/domain/entities/validate_code_response.dart';

part 'employee_model.freezed.dart';
part 'employee_model.g.dart';

@freezed
abstract class EmployeeModel with _$EmployeeModel {
  const factory EmployeeModel({
    required String id,
    required String firstName,
    required String lastName,
    required String dni,
    required String position,
    required String department,
  }) = _EmployeeModel;

  factory EmployeeModel.fromJson(Map<String, dynamic> json) =>
      _$EmployeeModelFromJson(json);
}

extension EmployeeModelX on EmployeeModel {
  Employee toDomain() {
    return Employee(
      id: id,
      firstName: firstName,
      lastName: lastName,
      dni: dni,
      position: position,
      department: department,
    );
  }
}