class AuthSession {
  final bool success;
  final AuthSessionData data;

  AuthSession({required this.success, required this.data});
}

class AuthSessionData {
  final AuthSessionUser user;
  final String token;

  AuthSessionData({required this.user, required this.token});
}

class AuthSessionUser {
  final String id;
  final String email;
  final String role;
  final AuthSessionEmployee employee;

  AuthSessionUser(this.id, this.email, this.role, this.employee);
}

class AuthSessionEmployee {
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

  AuthSessionEmployee({
    required this.id,
    required this.userId,
    required this.firstName,
    required this.lastName,
    required this.dni,
    required this.phone,
    required this.photoUrl,
    required this.position,
    required this.department,
    required this.shiftId,
  });
}
