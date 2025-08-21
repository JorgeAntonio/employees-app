import 'package:attendance_app/src/features/employees/domain/entities/create_employee_request.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_employee_request_model.freezed.dart';
part 'create_employee_request_model.g.dart';

@freezed
abstract class CreateEmployeeRequestModel with _$CreateEmployeeRequestModel {
  const factory CreateEmployeeRequestModel({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String dni,
    String? phone,
    String? photoUrl,
    required String position,
    required String department,
    String? shiftId,
  }) = _CreateEmployeeRequestModel;

  factory CreateEmployeeRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CreateEmployeeRequestModelFromJson(json);
}

extension CreateEmployeeRequestModelX on CreateEmployeeRequestModel {
  CreateEmployeeRequest toDomain() {
    return CreateEmployeeRequest(
      email: email,
      password: password,
      firstName: firstName,
      lastName: lastName,
      dni: dni,
      phone: phone,
      photoUrl: photoUrl,
      position: position,
      department: department,
      shiftId: shiftId,
    );
  }
}

extension CreateEmployeeRequestX on CreateEmployeeRequest {
  CreateEmployeeRequestModel toModel() {
    return CreateEmployeeRequestModel(
      email: email,
      password: password,
      firstName: firstName,
      lastName: lastName,
      dni: dni,
      phone: phone,
      photoUrl: photoUrl,
      position: position,
      department: department,
      shiftId: shiftId,
    );
  }
}