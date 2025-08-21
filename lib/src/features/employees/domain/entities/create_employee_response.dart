import 'package:attendance_app/src/features/employees/domain/entities/employee_entity.dart';

class CreateEmployeeResponse {
  final bool success;
  final CreateEmployeeData? data;
  final String? message;

  CreateEmployeeResponse({
    required this.success,
    this.data,
    this.message,
  });
}

class CreateEmployeeData {
  final CreatedUser user;
  final Employee employee;

  CreateEmployeeData({
    required this.user,
    required this.employee,
  });
}

class CreatedUser {
  final String id;
  final String email;
  final String role;

  CreatedUser({
    required this.id,
    required this.email,
    required this.role,
  });
}