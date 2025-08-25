import 'package:attendance_app/src/core/entities/pagination_response.dart';

class DailyAttendanceResponse {
  final bool success;
  final DailyAttendanceData? data;
  final String? message;

  DailyAttendanceResponse({required this.success, this.data, this.message});
}

class DailyAttendanceData {
  final String date;
  final List<EmployeeAttendance> employees;
  final AttendanceStats stats;
  final PaginationResponse pagination;
  final AttendanceFilters filters;

  DailyAttendanceData({
    required this.date,
    required this.employees,
    required this.stats,
    required this.pagination,
    required this.filters,
  });
}

class EmployeeAttendance {
  final String id;
  final String firstName;
  final String lastName;
  final String dni;
  final String position;
  final String department;
  final String? phone;
  final String? photoUrl;
  final String? shift;
  final AttendanceUser user;
  final List<AttendanceRecord>? attendance;
  final String attendanceStatus;
  final String statusLabel;

  EmployeeAttendance({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.dni,
    required this.position,
    required this.department,
    this.phone,
    this.photoUrl,
    this.shift,
    required this.user,
    this.attendance,
    required this.attendanceStatus,
    required this.statusLabel,
  });
}

class AttendanceUser {
  final String id;
  final String email;

  AttendanceUser({required this.id, required this.email});
}

class AttendanceRecord {
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

  AttendanceRecord({
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
  });
}

class AttendanceStats {
  final int total;
  final int present;
  final int absent;
  final int late;
  final int active;
  final int completed;

  AttendanceStats({
    required this.total,
    required this.present,
    required this.absent,
    required this.late,
    required this.active,
    required this.completed,
  });
}

class AttendanceFilters {
  final String? department;
  final String? position;

  AttendanceFilters({this.department, this.position});
}
