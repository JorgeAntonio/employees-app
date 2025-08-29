class UserStatsEntityResponse {
  final bool success;
  final UserStatsData data;

  UserStatsEntityResponse({required this.success, required this.data});
}

class UserStatsData {
  final Period period;
  final EmployeeInfo employee;
  final Statistics statistics;
  final List<RecentAttendance> recentAttendances;

  UserStatsData({
    required this.period,
    required this.employee,
    required this.statistics,
    required this.recentAttendances,
  });
}

class Period {
  final String startDate;
  final String endDate;
  final int days;

  Period({required this.startDate, required this.endDate, required this.days});
}

class EmployeeInfo {
  final String id;
  final String firstName;
  final String lastName;
  final String department;
  final String position;
  final String? shift;

  EmployeeInfo({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.department,
    required this.position,
    this.shift,
  });
}

class Statistics {
  final int totalDays;
  final int presences;
  final int absences;
  final int lateArrivals;
  final int justified;
  final double punctualityRate;
  final double averageHours;
  final double attendanceRate;

  Statistics({
    required this.totalDays,
    required this.presences,
    required this.absences,
    required this.lateArrivals,
    required this.justified,
    required this.punctualityRate,
    required this.averageHours,
    required this.attendanceRate,
  });
}

class RecentAttendance {
  final DateTime date;
  final DateTime checkInTime;
  final DateTime? checkOutTime;
  final String status;
  final int? durationMins;

  RecentAttendance({
    required this.date,
    required this.checkInTime,
    this.checkOutTime,
    required this.status,
    this.durationMins,
  });
}
