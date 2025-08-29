import 'package:attendance_app/src/core/entities/pagination_response.dart';

class EmployeesResponse {
  final bool success;
  final EmployeesData? data;
  final String? message;

  EmployeesResponse({required this.success, this.data, this.message});
}

class EmployeesData {
  final List<Employee> employees;
  final PaginationResponse pagination;

  EmployeesData({required this.employees, required this.pagination});
}

class Employee {
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
  final UserEntity user;
  final Shift? shift;

  Employee({
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
    required this.user,
    this.shift,
  });
}

class UserEntity {
  final String id;
  final String email;
  final String role;
  final DateTime createdAt;

  UserEntity({
    required this.id,
    required this.email,
    required this.role,
    required this.createdAt,
  });
}

class Shift {
  final String id;
  final String name;
  final DateTime startTime;
  final DateTime endTime;

  Shift({
    required this.id,
    required this.name,
    required this.startTime,
    required this.endTime,
  });
}

class UpdateUserEmployee {
  final bool success;
  final Employee? employee;
  final String? message;

  UpdateUserEmployee({required this.success, this.employee, this.message});
}
