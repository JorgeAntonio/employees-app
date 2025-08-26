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
  final String date;
  final String checkInTime;
  final String checkOutTime;
  final String status;
  final int durationMins;

  RecentAttendance({
    required this.date,
    required this.checkInTime,
    required this.checkOutTime,
    required this.status,
    required this.durationMins,
  });
}

// {
// 	"success": true,
// 	"data": {
// 		"period": {
// 			"startDate": "2025-07-27",
// 			"endDate": "2025-08-26",
// 			"days": 30
// 		},
// 		"employee": {
// 			"id": "88b00246-a26c-43bf-b62a-34554175721f",
// 			"firstName": "Administrador",
// 			"lastName": "Sistema",
// 			"department": "Sistemas",
// 			"position": "Administrador",
// 			"shift": null
// 		},
// 		"statistics": {
// 			"totalDays": 3,
// 			"presences": 3,
// 			"absences": 0,
// 			"lateArrivals": 0,
// 			"justified": 0,
// 			"punctualityRate": 100,
// 			"averageHours": 0.2,
// 			"attendanceRate": 100
// 		},
// 		"recentAttendances": [
// 			{
// 				"date": "2025-08-26",
// 				"checkInTime": "2025-08-26T03:33:04.379Z",
// 				"checkOutTime": "2025-08-26T03:56:23.433Z",
// 				"status": "PRESENT",
// 				"durationMins": 23
// 			},
// 			{
// 				"date": "2025-08-26",
// 				"checkInTime": "2025-08-26T02:43:36.752Z",
// 				"checkOutTime": "2025-08-26T02:49:33.512Z",
// 				"status": "PRESENT",
// 				"durationMins": 5
// 			},
// 			{
// 				"date": "2025-08-25",
// 				"checkInTime": "2025-08-25T18:48:55.564Z",
// 				"checkOutTime": "2025-08-25T18:49:14.266Z",
// 				"status": "PRESENT",
// 				"durationMins": 0
// 			}
// 		]
// 	}
// }
