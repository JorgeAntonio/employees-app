import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:logger/logger.dart';

class ApiServiceVariables {
  static String get appName => dotenv.env['APP_NAME'] ?? 'Attendance App';

  // API Endpoints

  static String get userService =>
      dotenv.env['APP_API_USER_SERVICE_LOCAL'] ??
      dotenv.env['APP_API_USER_SERVICE'] ??
      '';

  static Future<void> loadEnv() async {
    await dotenv.load(fileName: '.env');
    Logger().d('Variables de entorno cargadas:');
    Logger().d(
      dotenv.env.toString(),
    ); // Imprime las variables de entorno cargadas
  }
}
