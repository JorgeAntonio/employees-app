class UpdateEmployeeRequest {
  final String? firstName;
  final String? lastName;
  final String? phone;
  final String? photoUrl;
  final String? position;
  final String? department;
  final String? shiftId;

  const UpdateEmployeeRequest({
    this.firstName,
    this.lastName,
    this.phone,
    this.photoUrl,
    this.position,
    this.department,
    this.shiftId,
  });
}
