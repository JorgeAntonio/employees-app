import 'package:attendance_app/src/features/auth/domain/entities/profile_entity.dart';
import 'package:attendance_app/src/features/employees/data/models/employees_response/employees_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
abstract class ProfileResponseModel with _$ProfileResponseModel {
  const factory ProfileResponseModel({
    required bool success,
    required ProfileDataModel data,
    String? message,
  }) = _ProfileResponseModel;

  factory ProfileResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseModelFromJson(json);
}

@freezed
abstract class ProfileDataModel with _$ProfileDataModel {
  const factory ProfileDataModel({
    required String id,
    required String email,
    required String role,
    EmployeeWithShiftModel? employee,
  }) = _ProfileDataModel;

  factory ProfileDataModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileDataModelFromJson(json);
}

@freezed
abstract class EmployeeWithShiftModel with _$EmployeeWithShiftModel {
  const factory EmployeeWithShiftModel({
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
    ShiftModel? shift,
  }) = _EmployeeWithShiftModel;

  factory EmployeeWithShiftModel.fromJson(Map<String, dynamic> json) =>
      _$EmployeeWithShiftModelFromJson(json);
}

// Extensions para convertir entre modelos y entidades
extension ProfileResponseModelX on ProfileResponseModel {
  ProfileEntityResponse toDomain() {
    return ProfileEntityResponse(
      success: success,
      profile: data.toDomain(),
      message: message,
    );
  }
}

extension ProfileDataModelX on ProfileDataModel {
  ProfileData toDomain() {
    return ProfileData(
      id: id,
      email: email,
      role: role,
      employee: employee?.toDomain(),
    );
  }
}

extension EmployeeWithShiftModelX on EmployeeWithShiftModel {
  EmployeeWithShift toDomain() {
    return EmployeeWithShift(
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
      shift: shift?.toDomain(),
    );
  }
}
