class QrCodeResponse {
  final bool success;
  final QrCodeData data;

  QrCodeResponse({required this.success, required this.data});

  factory QrCodeResponse.fromJson(Map<String, dynamic> json) {
    return QrCodeResponse(
      success: json['success'],
      data: QrCodeData.fromJson(json['data']),
    );
  }
}

class QrCodeData {
  final String qrCode;
  final String manualCode;
  final DateTime expiresAt;
  final String type;

  QrCodeData({
    required this.qrCode,
    required this.manualCode,
    required this.expiresAt,
    required this.type,
  });

  factory QrCodeData.fromJson(Map<String, dynamic> json) {
    return QrCodeData(
      qrCode: json['qrCode'],
      manualCode: json['manualCode'],
      expiresAt: DateTime.parse(json['expiresAt']),
      type: json['type'],
    );
  }
}