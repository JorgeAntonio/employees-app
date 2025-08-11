class AttendanceConstants {
  // API Configuration
  static const String baseUrl = 'https://api.example.com/api/v1';

  // Test token - Replace with real authentication
  static const String testToken =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJlbXAtMTIzIiwibmFtZSI6Ikp1YW4gUGVyZXoiLCJpYXQiOjE1MTYyMzkwMjJ9.test';

  // API Endpoints
  static const String checkInQREndpoint = '/attendance/checkin/qr';
  static const String checkOutQREndpoint = '/attendance/checkout/qr';
  static const String validateEndpoint = '/attendance/validate';
  static const String confirmEndpoint = '/attendance/confirm';
  static const String historyEndpoint = '/attendance/history/me';
  static const String statusEndpoint = '/attendance/status/me';
  static const String profileEndpoint = '/attendance/profile';

  // QR Code Configuration
  static const int qrCodeExpirationMinutes = 10;
  static const int manualCodeLength = 6;

  // Pagination
  static const int defaultPageSize = 10;
  static const int maxPageSize = 50;

  // Device Information
  static const String deviceName = 'Flutter Attendance App';
  static const String deviceOS = 'Android/iOS';
  static const String deviceBrowser = 'Mobile App';
  static const String userAgent = 'AttendanceApp/1.0';

  // Error Messages
  static const String networkError = 'Error de conexión. Verifica tu internet.';
  static const String serverError = 'Error del servidor. Intenta más tarde.';
  static const String unauthorizedError =
      'No autorizado. Inicia sesión nuevamente.';
  static const String validationError = 'Código inválido o expirado.';
  static const String confirmationError = 'Error al confirmar asistencia.';

  // Success Messages
  static const String qrGeneratedSuccess = 'Código QR generado exitosamente.';
  static const String attendanceConfirmedSuccess =
      'Asistencia registrada exitosamente.';
  static const String codeValidatedSuccess = 'Código validado correctamente.';

  // UI Constants
  static const double qrImageSize = 200.0;
  static const double qrContainerPadding = 16.0;
  static const double qrBorderRadius = 8.0;

  // Status Colors
  static const int presentColor = 0xFF4CAF50; // Green
  static const int absentColor = 0xFFF44336; // Red
  static const int lateColor = 0xFFFF9800; // Orange
  static const int earlyDepartureColor = 0xFF2196F3; // Blue
}
