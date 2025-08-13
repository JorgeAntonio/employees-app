class ConfirmAttendanceRequest {
  final String code;
  final bool confirmed;
  final String? locationId;
  final double? latitude;
  final double? longitude;
  final double? accuracy;
  final String? name;
  final DeviceInfo? deviceInfo;

  ConfirmAttendanceRequest({
    required this.code,
    required this.confirmed,
    this.locationId,
    this.latitude,
    this.longitude,
    this.accuracy,
    this.name,
    this.deviceInfo,
  });
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
}
