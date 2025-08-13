class ValidateCodeResponse {
  final bool success;
  final ValidateCodeData? data;
  final String? message;

  ValidateCodeResponse({required this.success, this.data, this.message});
}

class ValidateCodeData {
  final Employee employee;
  final String action;
  final DateTime timestamp;

  ValidateCodeData({
    required this.employee,
    required this.action,
    required this.timestamp,
  });
}

class Employee {
  final String id;
  final String firstName;
  final String lastName;
  final String dni;
  final String position;
  final String department;

  Employee({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.dni,
    required this.position,
    required this.department,
  });

  String get fullName => '$firstName $lastName';
}
