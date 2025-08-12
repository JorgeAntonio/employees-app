class ValidateCodeResponse {
  final bool success;
  final ValidateCodeData? data;
  final String? message;

  ValidateCodeResponse({
    required this.success,
    this.data,
    this.message,
  });

  factory ValidateCodeResponse.fromJson(Map<String, dynamic> json) {
    return ValidateCodeResponse(
      success: json['success'],
      data: json['data'] != null ? ValidateCodeData.fromJson(json['data']) : null,
      message: json['message'],
    );
  }
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

  factory ValidateCodeData.fromJson(Map<String, dynamic> json) {
    return ValidateCodeData(
      employee: Employee.fromJson(json['employee']),
      action: json['action'],
      timestamp: DateTime.parse(json['timestamp']),
    );
  }
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

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
      id: json['id'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      dni: json['dni'],
      position: json['position'],
      department: json['department'],
    );
  }

  String get fullName => '$firstName $lastName';
}