class ConfirmAttendanceRequest {
  final String code;
  final bool? confirmed;
  final String? locationId;
  final double? latitude;
  final double? longitude;
  final double? accuracy;
  final String? name;
  final DeviceInfo? deviceInfo;

  ConfirmAttendanceRequest({
    required this.code,
    this.confirmed,
    this.locationId,
    this.latitude,
    this.longitude,
    this.accuracy,
    this.name,
    this.deviceInfo,
  });

  factory ConfirmAttendanceRequest.fromJson(Map<String, dynamic> json) {
    return ConfirmAttendanceRequest(
      code: json['code'],
      confirmed: json['confirmed'],
      locationId: json['locationId'],
      latitude: json['latitude']?.toDouble(),
      longitude: json['longitude']?.toDouble(),
      accuracy: json['accuracy']?.toDouble(),
      name: json['name'],
      deviceInfo: json['deviceInfo'] != null 
          ? DeviceInfo.fromJson(json['deviceInfo']) 
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'code': code,
    };
    
    if (confirmed != null) data['confirmed'] = confirmed;
    if (locationId != null) data['locationId'] = locationId;
    if (latitude != null) data['latitude'] = latitude;
    if (longitude != null) data['longitude'] = longitude;
    if (accuracy != null) data['accuracy'] = accuracy;
    if (name != null) data['name'] = name;
    if (deviceInfo != null) data['deviceInfo'] = deviceInfo!.toJson();
    
    return data;
  }
}

class DeviceInfo {
  final String name;
  final String os;
  final String browser;
  final String userAgent;

  DeviceInfo({
    required this.name,
    required this.os,
    required this.browser,
    required this.userAgent,
  });

  factory DeviceInfo.fromJson(Map<String, dynamic> json) {
    return DeviceInfo(
      name: json['name'],
      os: json['os'],
      browser: json['browser'],
      userAgent: json['userAgent'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'os': os,
      'browser': browser,
      'userAgent': userAgent,
    };
  }
}