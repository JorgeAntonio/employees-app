class CreateEmployeeRequest {
  final String email;
  final String password;
  final String firstName;
  final String lastName;
  final String dni;
  final String? phone;
  final String? photoUrl;
  final String position;
  final String department;
  final String? shiftId;

  CreateEmployeeRequest({
    required this.email,
    required this.password,
    required this.firstName,
    required this.lastName,
    required this.dni,
    this.phone,
    this.photoUrl,
    required this.position,
    required this.department,
    this.shiftId,
  });
}