import 'package:attendance_app/src/features/employees/domain/entities/employee_entity.dart';

class ProfileEntityResponse {
  final bool success;
  final ProfileData profile;
  final String? message;

  ProfileEntityResponse({
    required this.profile,
    this.success = true,
    this.message,
  });
}

class ProfileData {
  final String id;
  final String email;
  final String role;
  final EmployeeWithShift? employee;

  ProfileData({
    required this.id,
    required this.email,
    required this.role,
    this.employee,
  });
}

class EmployeeWithShift {
  final String id;
  final String userId;
  final String firstName;
  final String lastName;
  final String dni;
  final String? phone;
  final String? photoUrl;
  final String position;
  final String department;
  final String? shiftId;
  final Shift? shift;

  EmployeeWithShift({
    required this.id,
    required this.userId,
    required this.firstName,
    required this.lastName,
    required this.dni,
    this.phone,
    this.photoUrl,
    required this.position,
    required this.department,
    this.shiftId,
    this.shift,
  });
}
