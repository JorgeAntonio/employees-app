class QrCodeResponse {
  final bool success;
  final QrCodeData data;

  QrCodeResponse({required this.success, required this.data});
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
}