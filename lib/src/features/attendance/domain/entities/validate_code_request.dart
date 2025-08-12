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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'code': code,
    };
    
    if (latitude != null) data['latitude'] = latitude;
    if (longitude != null) data['longitude'] = longitude;
    if (accuracy != null) data['accuracy'] = accuracy;
    
    return data;
  }
}