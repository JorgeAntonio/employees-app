class ConfirmAttendanceResponse {
  final bool success;
  final ConfirmAttendanceData? data;
  final String? message;

  ConfirmAttendanceResponse({required this.success, this.data, this.message});
}

class ConfirmAttendanceData {
  final String message;
  final Attendance attendance;

  ConfirmAttendanceData({required this.message, required this.attendance});
}

class Attendance {
  final String id;
  final String employeeId;
  final DateTime date;
  final DateTime? checkInTime;
  final DateTime? checkOutTime;
  final int? durationMins;
  final String status;
  final String? checkInLocationId;
  final String? checkOutLocationId;
  final String? deviceId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final AttendanceEmployee employee;
  final AttendanceLocation? checkInLocation;
  final AttendanceLocation? checkOutLocation;
  final AttendanceDevice? device;

  Attendance({
    required this.id,
    required this.employeeId,
    required this.date,
    this.checkInTime,
    this.checkOutTime,
    this.durationMins,
    required this.status,
    this.checkInLocationId,
    this.checkOutLocationId,
    this.deviceId,
    required this.createdAt,
    required this.updatedAt,
    required this.employee,
    this.checkInLocation,
    this.checkOutLocation,
    this.device,
  });
}

class AttendanceEmployee {
  final String firstName;
  final String lastName;
  final String dni;

  AttendanceEmployee({
    required this.firstName,
    required this.lastName,
    required this.dni,
  });

  String get fullName => '$firstName $lastName';
}

class AttendanceLocation {
  final String id;
  final String name;
  final double? latitude;
  final double? longitude;
  final double? accuracy;

  AttendanceLocation({
    required this.id,
    required this.name,
    this.latitude,
    this.longitude,
    this.accuracy,
  });
}

class AttendanceDevice {
  final String id;
  final String name;
  final String os;
  final String browser;
  final String userAgent;

  AttendanceDevice({
    required this.id,
    required this.name,
    required this.os,
    required this.browser,
    required this.userAgent,
  });
}
