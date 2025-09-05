import 'dart:convert';

import 'package:attendance_app/src/features/home/data/models/user_stats_response/user_stats_response_model.dart';

void main() {
  const jsonString = '''
{
  "success": true,
  "data": {
    "period": {
      "startDate": "2025-08-06",
      "endDate": "2025-09-05",
      "days": 30
    },
    "employee": {
      "id": "e7b97146-cbc9-4352-bba9-ad0ff83e2789",
      "firstName": "Liam Editado xd",
      "lastName": "Nieson",
      "department": "Sistemas",
      "position": "Dev",
      "shift": {
        "name": "Tarde",
        "startTime": "2025-08-25T19:00:00.000Z",
        "endTime": "2025-08-26T04:00:00.000Z"
      }
    },
    "statistics": {
      "totalDays": 1,
      "presences": 1,
      "absences": 0,
      "lateArrivals": 0,
      "justified": 0,
      "punctualityRate": 100.0,
      "averageHours": 0.0,
      "attendanceRate": 100.0
    },
    "recentAttendances": [
      {
        "date": "2025-09-05T00:00:00.000Z",
        "checkInTime": "2025-09-05T05:50:25.632Z",
        "status": "PRESENT",
        "durationMins": null
      }
    ]
  }
}
''';

  try {
    final json = jsonDecode(jsonString) as Map<String, dynamic>;
    final model = UserStatsResponseModel.fromJson(json);
    print('Success: ${model.success}');
    print('Employee: ${model.data?.employee?.firstName}');
    print('Shift: ${model.data?.employee?.shift?.name}');
    print('Parsing successful!');
  } catch (e, stackTrace) {
    print('Error parsing JSON: $e');
    print('Stack trace: $stackTrace');
  }
}
