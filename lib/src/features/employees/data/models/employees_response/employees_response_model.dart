import 'package:attendance_app/src/core/entities/pagination_response.dart';
import 'package:attendance_app/src/core/models/pagination_response_model.dart';
import 'package:attendance_app/src/features/employees/domain/entities/employee_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employees_response_model.freezed.dart';
part 'employees_response_model.g.dart';

@freezed
abstract class EmployeesResponseModel with _$EmployeesResponseModel {
  const factory EmployeesResponseModel({
    required bool success,
    EmployeesDataModel? data,
    String? message,
  }) = _EmployeesResponseModel;

  factory EmployeesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$EmployeesResponseModelFromJson(json);
}

@freezed
abstract class EmployeesDataModel with _$EmployeesDataModel {
  const factory EmployeesDataModel({
    required List<EmployeeModel> employees,
    required PaginationResponseModel pagination,
  }) = _EmployeesDataModel;

  factory EmployeesDataModel.fromJson(Map<String, dynamic> json) =>
      _$EmployeesDataModelFromJson(json);
}

@freezed
abstract class EmployeeModel with _$EmployeeModel {
  const factory EmployeeModel({
    required String id,
    required String userId,
    required String firstName,
    required String lastName,
    required String dni,
    String? phone,
    String? photoUrl,
    required String position,
    required String department,
    String? shiftId,
    required UserModel user,
    ShiftModel? shift,
  }) = _EmployeeModel;

  factory EmployeeModel.fromJson(Map<String, dynamic> json) =>
      _$EmployeeModelFromJson(json);
}

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String email,
    required String role,
    required DateTime createdAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
abstract class ShiftModel with _$ShiftModel {
  const factory ShiftModel({
    required String id,
    required String name,
    required DateTime startTime,
    required DateTime endTime,
  }) = _ShiftModel;

  factory ShiftModel.fromJson(Map<String, dynamic> json) =>
      _$ShiftModelFromJson(json);
}

// Extensions para convertir a entidades de dominio
extension EmployeesResponseModelX on EmployeesResponseModel {
  EmployeesResponse toDomain() {
    return EmployeesResponse(
      success: success,
      data:
          data?.toDomain() ??
          EmployeesData(
            employees: const [],
            pagination: PaginationResponse(
              page: 1,
              limit: 10,
              total: 0,
              totalPages: 1,
            ),
          ),
      message: message,
    );
  }
}

extension EmployeesDataModelX on EmployeesDataModel {
  EmployeesData toDomain() {
    return EmployeesData(
      employees: employees.map((employee) => employee.toDomain()).toList(),
      pagination: pagination.toDomain(),
    );
  }
}

extension EmployeeModelX on EmployeeModel {
  Employee toDomain() {
    return Employee(
      id: id,
      userId: userId,
      firstName: firstName,
      lastName: lastName,
      dni: dni,
      phone: phone,
      photoUrl: photoUrl,
      position: position,
      department: department,
      shiftId: shiftId,
      user: user.toDomain(),
      shift: shift?.toDomain(),
    );
  }
}

extension UserModelX on UserModel {
  UserEntity toDomain() {
    return UserEntity(id: id, email: email, role: role, createdAt: createdAt);
  }
}

extension ShiftModelX on ShiftModel {
  Shift toDomain() {
    return Shift(id: id, name: name, startTime: startTime, endTime: endTime);
  }
}
