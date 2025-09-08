import 'package:attendance_app/src/features/employees/domain/entities/employee_entity.dart';

class UpdateEmployeeResponse {
  final bool success;
  final Employee? data;
  final String? message;

  const UpdateEmployeeResponse({
    required this.success,
    this.data,
    this.message,
  });
}
