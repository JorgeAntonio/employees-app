class QRCode {
  final String qrCode;
  final String manualCode;
  final DateTime expiresAt;
  final String type;

  QRCode({
    required this.qrCode,
    required this.manualCode,
    required this.expiresAt,
    required this.type,
  });
}

class Employee {
  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final String position;

  Employee({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.position,
  });
}

class AttendanceValidation {
  final Employee employee;
  final String type;
  final DateTime timestamp;
  final String location;

  AttendanceValidation({
    required this.employee,
    required this.type,
    required this.timestamp,
    required this.location,
  });
}

class AttendanceRecord {
  final String id;
  final String employeeId;
  final String type;
  final DateTime timestamp;
  final String location;

  AttendanceRecord({
    required this.id,
    required this.employeeId,
    required this.type,
    required this.timestamp,
    required this.location,
  });
}

class AttendanceStatus {
  final bool isCheckedIn;
  final DateTime? lastCheckIn;
  final DateTime? lastCheckOut;
  final int todayDuration;
  final String currentStatus;

  AttendanceStatus({
    required this.isCheckedIn,
    required this.lastCheckIn,
    required this.lastCheckOut,
    required this.todayDuration,
    required this.currentStatus,
  });
}

class EmployeeProfile {
  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final String position;
  final User user;
  final Shift? shift;

  EmployeeProfile({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.position,
    required this.user,
    required this.shift,
  });
}

class User {
  final String id;
  final String email;
  final String role;

  User({required this.id, required this.email, required this.role});
}

class Shift {
  final String id;
  final String name;
  final String startTime;
  final String endTime;

  Shift({
    required this.id,
    required this.name,
    required this.startTime,
    required this.endTime,
  });
}

class AttendanceHistory {
  final List<AttendanceRecord> records;
  final int total;
  final int page;
  final int limit;

  AttendanceHistory({
    required this.records,
    required this.total,
    required this.page,
    required this.limit,
  });
}

class LocationInfo {
  final String? locationId;
  final double? latitude;
  final double? longitude;
  final double? accuracy;
  final String? name;

  LocationInfo({
    required this.locationId,
    required this.latitude,
    required this.longitude,
    required this.accuracy,
    required this.name,
  });
}

class DeviceInfo {
  final String? name;
  final String? os;
  final String? browser;
  final String? userAgent;

  DeviceInfo({
    required this.name,
    required this.os,
    required this.browser,
    required this.userAgent,
  });
}
