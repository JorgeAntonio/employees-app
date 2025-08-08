import 'package:attendance_app/src/features/auth/domain/entities/auth_session.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_session_employee_model.freezed.dart';
part 'auth_session_employee_model.g.dart';

@freezed
abstract class AuthSessionEmployeeModel with _$AuthSessionEmployeeModel {
  const factory AuthSessionEmployeeModel({
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
  }) = _AuthSessionEmployeeModel;

  factory AuthSessionEmployeeModel.fromJson(Map<String, dynamic> json) =>
      _$AuthSessionEmployeeModelFromJson(json);
}

extension AuthSessionEmployeeModelX on AuthSessionEmployeeModel {
  AuthSessionEmployee toDomain() => AuthSessionEmployee(
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
  );
}
