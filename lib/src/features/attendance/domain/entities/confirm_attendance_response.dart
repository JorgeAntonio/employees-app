class ConfirmAttendanceResponse {
  final bool success;
  final ConfirmAttendanceData? data;
  final String? message;

  ConfirmAttendanceResponse({
    required this.success,
    this.data,
    this.message,
  });

  factory ConfirmAttendanceResponse.fromJson(Map<String, dynamic> json) {
    return ConfirmAttendanceResponse(
      success: json['success'],
      data: json['data'] != null ? ConfirmAttendanceData.fromJson(json['data']) : null,
      message: json['message'],
    );
  }
}

class ConfirmAttendanceData {
  final String message;
  final Attendance attendance;

  ConfirmAttendanceData({
    required this.message,
    required this.attendance,
  });

  factory ConfirmAttendanceData.fromJson(Map<String, dynamic> json) {
    return ConfirmAttendanceData(
      message: json['message'],
      attendance: Attendance.fromJson(json['attendance']),
    );
  }
}

class Attendance {
  final String id;
  final String employeeId;
  final DateTime date;
  final DateTime? checkInTime;
  final DateTime? checkOutTime;
  final int durationMins;
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
    required this.durationMins,
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

  factory Attendance.fromJson(Map<String, dynamic> json) {
    return Attendance(
      id: json['id'],
      employeeId: json['employeeId'],
      date: DateTime.parse(json['date']),
      checkInTime: json['checkInTime'] != null ? DateTime.parse(json['checkInTime']) : null,
      checkOutTime: json['checkOutTime'] != null ? DateTime.parse(json['checkOutTime']) : null,
      durationMins: json['durationMins'],
      status: json['status'],
      checkInLocationId: json['checkInLocationId'],
      checkOutLocationId: json['checkOutLocationId'],
      deviceId: json['deviceId'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
      employee: AttendanceEmployee.fromJson(json['employee']),
      checkInLocation: json['checkInLocation'] != null 
          ? AttendanceLocation.fromJson(json['checkInLocation']) 
          : null,
      checkOutLocation: json['checkOutLocation'] != null 
          ? AttendanceLocation.fromJson(json['checkOutLocation']) 
          : null,
      device: json['device'] != null 
          ? AttendanceDevice.fromJson(json['device']) 
          : null,
    );
  }
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

  factory AttendanceEmployee.fromJson(Map<String, dynamic> json) {
    return AttendanceEmployee(
      firstName: json['firstName'],
      lastName: json['lastName'],
      dni: json['dni'],
    );
  }

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

  factory AttendanceLocation.fromJson(Map<String, dynamic> json) {
    return AttendanceLocation(
      id: json['id'],
      name: json['name'],
      latitude: json['latitude']?.toDouble(),
      longitude: json['longitude']?.toDouble(),
      accuracy: json['accuracy']?.toDouble(),
    );
  }
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

  factory AttendanceDevice.fromJson(Map<String, dynamic> json) {
    return AttendanceDevice(
      id: json['id'],
      name: json['name'],
      os: json['os'],
      browser: json['browser'],
      userAgent: json['userAgent'],
    );
  }
}