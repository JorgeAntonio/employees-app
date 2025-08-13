class AttendanceHistoryResponse {
  final bool success;
  final AttendanceHistoryData? data;
  final String? message;

  AttendanceHistoryResponse({required this.success, this.data, this.message});
}

class AttendanceHistoryData {
  final List<AttendanceHistoryItem> attendances;
  final PaginationInfo pagination;

  AttendanceHistoryData({required this.attendances, required this.pagination});
}

class AttendanceHistoryItem {
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
  final AttendanceHistoryEmployee employee;
  final AttendanceHistoryLocation? checkInLocation;
  final AttendanceHistoryLocation? checkOutLocation;
  final AttendanceHistoryDevice? device;

  AttendanceHistoryItem({
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

class AttendanceHistoryEmployee {
  final String id;
  final String firstName;
  final String lastName;
  final String dni;
  final String position;
  final String department;

  AttendanceHistoryEmployee({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.dni,
    required this.position,
    required this.department,
  });
}

class AttendanceHistoryLocation {
  final String id;
  final String name;
  final double? latitude;
  final double? longitude;
  final double? accuracy;

  AttendanceHistoryLocation({
    required this.id,
    required this.name,
    this.latitude,
    this.longitude,
    this.accuracy,
  });
}

class AttendanceHistoryDevice {
  final String id;
  final String name;
  final String os;
  final String browser;
  final String userAgent;

  AttendanceHistoryDevice({
    required this.id,
    required this.name,
    required this.os,
    required this.browser,
    required this.userAgent,
  });
}

class PaginationInfo {
  final int page;
  final int limit;
  final int total;
  final int totalPages;

  PaginationInfo({
    required this.page,
    required this.limit,
    required this.total,
    required this.totalPages,
  });
}
