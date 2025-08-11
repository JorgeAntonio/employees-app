import 'package:attendance_app/src/core/config/api_service_type.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

class DioConfig {
  static Dio createDio({bool enableLogging = true}) {
    final dio = Dio();

    // Base configuration
    dio.options.baseUrl = ApiServiceVariables.userService;
    dio.options.connectTimeout = const Duration(seconds: 30);
    dio.options.receiveTimeout = const Duration(seconds: 30);
    dio.options.sendTimeout = const Duration(seconds: 30);

    // Headers
    dio.options.headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    // Interceptors
    if (enableLogging) {
      dio.interceptors.addAll([
        _LoggingInterceptor(),
        _AuthInterceptor(),
        _ResponseTimeInterceptor(),
      ]);
    } else {
      dio.interceptors.add(_AuthInterceptor());
    }

    return dio;
  }

  /// Configura el nivel de logging para toda la aplicación
  static void configureLogging({bool enableNetworkLogs = true}) {
    if (enableNetworkLogs) {
      Logger().i('🌐 Network logging enabled');
      Logger().i('📡 Base URL: ${ApiServiceVariables.userService}');
    } else {
      Logger().i('🔇 Network logging disabled');
    }
  }
}

class _LoggingInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final url = '${options.baseUrl}${options.path}';
    final queryParams = options.queryParameters.isNotEmpty
        ? '?${Uri(queryParameters: options.queryParameters).query}'
        : '';
    final fullUrl = '$url$queryParams';

    Logger().i('🌐 REQUEST [${options.method}] => $fullUrl');
    Logger().d('📋 Headers: ${options.headers}');
    Logger().d('📦 Data: ${options.data}');
    Logger().d('⏱️  Timeout: ${options.connectTimeout?.inSeconds}s');

    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final url =
        '${response.requestOptions.baseUrl}${response.requestOptions.path}';
    final queryParams = response.requestOptions.queryParameters.isNotEmpty
        ? '?${Uri(queryParameters: response.requestOptions.queryParameters).query}'
        : '';
    final fullUrl = '$url$queryParams';

    Logger().i('✅ RESPONSE [${response.statusCode}] => $fullUrl');
    Logger().d('📦 Response Data: ${response.data}');
    Logger().d(
      '⏱️  Response Time: ${response.requestOptions.extra['responseTime'] ?? 'N/A'}',
    );

    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final url = '${err.requestOptions.baseUrl}${err.requestOptions.path}';
    final queryParams = err.requestOptions.queryParameters.isNotEmpty
        ? '?${Uri(queryParameters: err.requestOptions.queryParameters).query}'
        : '';
    final fullUrl = '$url$queryParams';

    Logger().e(
      '❌ ERROR [${err.response?.statusCode ?? 'NO_RESPONSE'}] => $fullUrl',
    );
    Logger().e('💬 Error Message: ${err.message}');
    Logger().e('🔍 Error Type: ${err.type}');

    if (err.response?.data != null) {
      Logger().e('📦 Error Response Data: ${err.response!.data}');
    }

    super.onError(err, handler);
  }
}

class _AuthInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // Here you can add token to requests if needed
    // You can get the token from SharedPreferences or a token manager
    // Example:
    // final token = await getStoredToken();
    // if (token != null) {
    //   options.headers['Authorization'] = 'Bearer $token';
    // }

    super.onRequest(options, handler);
  }
}

class _ResponseTimeInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.extra['startTime'] = DateTime.now();
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final startTime = response.requestOptions.extra['startTime'] as DateTime?;
    if (startTime != null) {
      final duration = DateTime.now().difference(startTime);
      response.requestOptions.extra['responseTime'] =
          '${duration.inMilliseconds}ms';
      Logger().d('⏱️  Response Time: ${duration.inMilliseconds}ms');
    }
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final startTime = err.requestOptions.extra['startTime'] as DateTime?;
    if (startTime != null) {
      final duration = DateTime.now().difference(startTime);
      Logger().e('⏱️  Error Response Time: ${duration.inMilliseconds}ms');
    }
    super.onError(err, handler);
  }
}
