class ValidateCodeRequest {
  final String code;
  final double? latitude;
  final double? longitude;
  final double? accuracy;

  ValidateCodeRequest({
    required this.code,
    this.latitude,
    this.longitude,
    this.accuracy,
  });
}
