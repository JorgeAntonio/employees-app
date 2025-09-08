import 'package:attendance_app/src/features/employees/data/models/employees_response/employees_response_model.dart';
import 'package:attendance_app/src/features/employees/domain/entities/create_employee_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_employee_response_model.freezed.dart';
part 'create_employee_response_model.g.dart';

@freezed
abstract class CreateEmployeeResponseModel with _$CreateEmployeeResponseModel {
  const factory CreateEmployeeResponseModel({
    required bool success,
    CreateEmployeeDataModel? data,
    String? message,
  }) = _CreateEmployeeResponseModel;

  factory CreateEmployeeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CreateEmployeeResponseModelFromJson(json);
}

@freezed
abstract class CreateEmployeeDataModel with _$CreateEmployeeDataModel {
  const factory CreateEmployeeDataModel({
    required CreatedUserModel user,
    required EmployeeModel employee,
  }) = _CreateEmployeeDataModel;

  factory CreateEmployeeDataModel.fromJson(Map<String, dynamic> json) =>
      _$CreateEmployeeDataModelFromJson(json);
}

@freezed
abstract class CreatedUserModel with _$CreatedUserModel {
  const factory CreatedUserModel({
    required String id,
    required String email,
    required String role,
  }) = _CreatedUserModel;

  factory CreatedUserModel.fromJson(Map<String, dynamic> json) =>
      _$CreatedUserModelFromJson(json);
}

extension CreateEmployeeResponseModelX on CreateEmployeeResponseModel {
  CreateEmployeeResponse toDomain() {
    return CreateEmployeeResponse(
      success: success,
      data: data?.toDomain(),
      message: message,
    );
  }
}

extension CreateEmployeeDataModelX on CreateEmployeeDataModel {
  CreateEmployeeData toDomain() {
    return CreateEmployeeData(
      user: user.toDomain(),
      employee: employee.toDomain(),
    );
  }
}

extension CreatedUserModelX on CreatedUserModel {
  CreatedUser toDomain() {
    return CreatedUser(
      id: id,
      email: email,
      role: role,
    );
  }
}