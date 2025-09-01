import 'package:attendance_app/src/features/employees/domain/entities/update_employee_request.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_employee_request_model.freezed.dart';
part 'update_employee_request_model.g.dart';

@freezed
abstract class UpdateEmployeeRequestModel with _$UpdateEmployeeRequestModel {
  const factory UpdateEmployeeRequestModel({
    String? firstName,
    String? lastName,
    String? phone,
    String? photoUrl,
    String? position,
    String? department,
    String? shiftId,
  }) = _UpdateEmployeeRequestModel;

  factory UpdateEmployeeRequestModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateEmployeeRequestModelFromJson(json);
}

// Extension para convertir desde entidad de dominio
extension UpdateEmployeeRequestX on UpdateEmployeeRequest {
  UpdateEmployeeRequestModel toModel() {
    return UpdateEmployeeRequestModel(
      firstName: firstName,
      lastName: lastName,
      phone: phone,
      photoUrl: photoUrl,
      position: position,
      department: department,
      shiftId: shiftId,
    );
  }

  // Método para convertir a JSON omitiendo campos nulos
  Map<String, dynamic> toJsonWithoutNulls() {
    final Map<String, dynamic> json = {};

    if (firstName != null && firstName!.trim().isNotEmpty) {
      json['firstName'] = firstName;
    }
    if (lastName != null && lastName!.trim().isNotEmpty) {
      json['lastName'] = lastName;
    }
    if (phone != null && phone!.trim().isNotEmpty) {
      json['phone'] = phone;
    }
    if (photoUrl != null && photoUrl!.trim().isNotEmpty) {
      json['photoUrl'] = photoUrl;
    }
    if (position != null && position!.trim().isNotEmpty) {
      json['position'] = position;
    }
    if (department != null && department!.trim().isNotEmpty) {
      json['department'] = department;
    }
    if (shiftId != null && shiftId!.trim().isNotEmpty) {
      json['shiftId'] = shiftId;
    }

    return json;
  }
}

// Extension para convertir a entidad de dominio
extension UpdateEmployeeRequestModelX on UpdateEmployeeRequestModel {
  UpdateEmployeeRequest toDomain() {
    return UpdateEmployeeRequest(
      firstName: firstName,
      lastName: lastName,
      phone: phone,
      photoUrl: photoUrl,
      position: position,
      department: department,
      shiftId: shiftId,
    );
  }
}
