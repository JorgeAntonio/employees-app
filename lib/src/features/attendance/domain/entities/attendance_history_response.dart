class AttendanceHistoryResponse {
  final bool success;
  final AttendanceHistoryData? data;
  final String? message;

  AttendanceHistoryResponse({
    required this.success,
    this.data,
    this.message,
  });

  factory AttendanceHistoryResponse.fromJson(Map<String, dynamic> json) {
    return AttendanceHistoryResponse(
      success: json['success'],
      data: json['data'] != null 
          ? AttendanceHistoryData.fromJson(json['data']) 
          : null,
      message: json['message'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'data': data?.toJson(),
      'message': message,
    };
  }
}

class AttendanceHistoryData {
  final List<AttendanceHistoryItem> attendances;
  final PaginationInfo pagination;

  AttendanceHistoryData({
    required this.attendances,
    required this.pagination,
  });

  factory AttendanceHistoryData.fromJson(Map<String, dynamic> json) {
    return AttendanceHistoryData(
      attendances: (json['attendances'] as List)
          .map((item) => AttendanceHistoryItem.fromJson(item))
          .toList(),
      pagination: PaginationInfo.fromJson(json['pagination']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'attendances': attendances.map((item) => item.toJson()).toList(),
      'pagination': pagination.toJson(),
    };
  }
}

class AttendanceHistoryItem {
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

  factory AttendanceHistoryItem.fromJson(Map<String, dynamic> json) {
    return AttendanceHistoryItem(
      id: json['id'],
      employeeId: json['employeeId'],
      date: DateTime.parse(json['date']),
      checkInTime: json['checkInTime'] != null 
          ? DateTime.parse(json['checkInTime']) 
          : null,
      checkOutTime: json['checkOutTime'] != null 
          ? DateTime.parse(json['checkOutTime']) 
          : null,
      durationMins: json['durationMins'],
      status: json['status'],
      checkInLocationId: json['checkInLocationId'],
      checkOutLocationId: json['checkOutLocationId'],
      deviceId: json['deviceId'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
      employee: AttendanceHistoryEmployee.fromJson(json['employee']),
      checkInLocation: json['checkInLocation'] != null 
          ? AttendanceHistoryLocation.fromJson(json['checkInLocation']) 
          : null,
      checkOutLocation: json['checkOutLocation'] != null 
          ? AttendanceHistoryLocation.fromJson(json['checkOutLocation']) 
          : null,
      device: json['device'] != null 
          ? AttendanceHistoryDevice.fromJson(json['device']) 
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'employeeId': employeeId,
      'date': date.toIso8601String(),
      'checkInTime': checkInTime?.toIso8601String(),
      'checkOutTime': checkOutTime?.toIso8601String(),
      'durationMins': durationMins,
      'status': status,
      'checkInLocationId': checkInLocationId,
      'checkOutLocationId': checkOutLocationId,
      'deviceId': deviceId,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
      'employee': employee.toJson(),
      'checkInLocation': checkInLocation?.toJson(),
      'checkOutLocation': checkOutLocation?.toJson(),
      'device': device?.toJson(),
    };
  }
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

  factory AttendanceHistoryEmployee.fromJson(Map<String, dynamic> json) {
    return AttendanceHistoryEmployee(
      id: json['id'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      dni: json['dni'],
      position: json['position'],
      department: json['department'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'dni': dni,
      'position': position,
      'department': department,
    };
  }
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

  factory AttendanceHistoryLocation.fromJson(Map<String, dynamic> json) {
    return AttendanceHistoryLocation(
      id: json['id'],
      name: json['name'],
      latitude: json['latitude']?.toDouble(),
      longitude: json['longitude']?.toDouble(),
      accuracy: json['accuracy']?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'latitude': latitude,
      'longitude': longitude,
      'accuracy': accuracy,
    };
  }
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

  factory AttendanceHistoryDevice.fromJson(Map<String, dynamic> json) {
    return AttendanceHistoryDevice(
      id: json['id'],
      name: json['name'],
      os: json['os'],
      browser: json['browser'],
      userAgent: json['userAgent'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'os': os,
      'browser': browser,
      'userAgent': userAgent,
    };
  }
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

  factory PaginationInfo.fromJson(Map<String, dynamic> json) {
    return PaginationInfo(
      page: json['page'],
      limit: json['limit'],
      total: json['total'],
      totalPages: json['totalPages'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'page': page,
      'limit': limit,
      'total': total,
      'totalPages': totalPages,
    };
  }
}