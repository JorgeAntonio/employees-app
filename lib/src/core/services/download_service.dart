import 'dart:io';
import 'dart:isolate';
import 'dart:ui';

import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class DownloadService {
  static const String _portName = 'downloader_send_port';
  static final ReceivePort _port = ReceivePort();

  /// Inicializa el servicio de descarga
  static void initialize() {
    IsolateNameServer.registerPortWithName(_port.sendPort, _portName);
    _port.listen((dynamic data) {
      // Los datos vienen en formato [id, status, progress]
      String id = data[0];
      DownloadTaskStatus status = DownloadTaskStatus.fromInt(data[1]);
      int progress = data[2];

      // Aquí puedes manejar las actualizaciones de progreso si es necesario
      print('Download $id: $status, $progress%');
    });

    FlutterDownloader.registerCallback(downloadCallback);
  }

  /// Callback que se ejecuta en el isolate de fondo
  @pragma('vm:entry-point')
  static void downloadCallback(String id, int status, int progress) {
    final SendPort? send = IsolateNameServer.lookupPortByName(_portName);
    send?.send([id, status, progress]);
  }

  /// Verifica y solicita permisos necesarios
  static Future<bool> _checkPermissions() async {
    if (Platform.isAndroid) {
      // Para Android 13+ verificar diferentes permisos
      bool hasPermission = false;

      // Intentar con storage permission
      if (await Permission.storage.status.isGranted) {
        hasPermission = true;
      } else {
        final result = await Permission.storage.request();
        hasPermission = result.isGranted;
      }

      // Si no funciona storage, intentar con manageExternalStorage (Android 11+)
      if (!hasPermission) {
        if (await Permission.manageExternalStorage.status.isGranted) {
          hasPermission = true;
        } else {
          final result = await Permission.manageExternalStorage.request();
          hasPermission = result.isGranted;
        }
      }

      // Como último recurso, intentar con notification
      if (!hasPermission) {
        final notificationResult = await Permission.notification.request();
        hasPermission = notificationResult.isGranted;
      }

      return hasPermission;
    }
    return true; // iOS no requiere permisos especiales
  }

  /// Obtiene el directorio de descarga apropiado
  static Future<String> _getDownloadDirectory() async {
    if (Platform.isAndroid) {
      // Intentar usar el directorio de descargas público
      try {
        return '/storage/emulated/0/Download';
      } catch (e) {
        // Si falla, usar external storage directory
        try {
          final directory = await getExternalStorageDirectory();
          return directory?.path ?? '/storage/emulated/0/Download';
        } catch (e) {
          // Como último recurso, usar application documents directory
          final directory = await getApplicationDocumentsDirectory();
          return '${directory.path}/Downloads';
        }
      }
    } else {
      // Para iOS usar documents directory
      final directory = await getApplicationDocumentsDirectory();
      return directory.path;
    }
  }

  /// Descarga un archivo usando flutter_downloader con mejor manejo de errores
  static Future<String?> downloadFile({
    required String url,
    required String filename,
    Map<String, String>? headers,
    bool showNotification = true,
    bool openFileFromNotification = true,
  }) async {
    try {
      // Verificar permisos
      final hasPermission = await _checkPermissions();
      if (!hasPermission) {
        throw Exception(
          'Se requieren permisos de almacenamiento para descargar archivos',
        );
      }

      // Obtener directorio de descarga
      final savedDir = await _getDownloadDirectory();

      // Verificar si el directorio existe, si no, crearlo
      final directory = Directory(savedDir);
      if (!await directory.exists()) {
        await directory.create(recursive: true);
      }

      // Iniciar la descarga
      final taskId = await FlutterDownloader.enqueue(
        url: url,
        headers: headers ?? {},
        savedDir: savedDir,
        fileName: filename,
        showNotification: showNotification,
        openFileFromNotification: openFileFromNotification,
        saveInPublicStorage: Platform.isAndroid,
      );

      return taskId;
    } catch (e) {
      print('Error en downloadFile: $e');
      rethrow;
    }
  }

  /// Obtiene el estado de una tarea de descarga
  static Future<DownloadTask?> getDownloadTask(String taskId) async {
    try {
      final tasks = await FlutterDownloader.loadTasksWithRawQuery(
        query: "SELECT * FROM task WHERE task_id='$taskId'",
      );

      if (tasks != null && tasks.isNotEmpty) {
        return tasks.first;
      }
    } catch (e) {
      print('Error al obtener tarea de descarga: $e');
    }
    return null;
  }

  /// Espera a que una descarga se complete
  static Future<DownloadTask?> waitForDownloadCompletion(
    String taskId, {
    int maxWaitTimeSeconds = 60,
    Duration checkInterval = const Duration(seconds: 1),
  }) async {
    int attempts = 0;
    final maxAttempts = maxWaitTimeSeconds;

    while (attempts < maxAttempts) {
      final task = await getDownloadTask(taskId);

      if (task != null) {
        if (task.status == DownloadTaskStatus.complete) {
          return task;
        } else if (task.status == DownloadTaskStatus.failed) {
          throw Exception('La descarga falló');
        } else if (task.status == DownloadTaskStatus.canceled) {
          throw Exception('La descarga fue cancelada');
        }
      }

      await Future.delayed(checkInterval);
      attempts++;
    }

    throw Exception('Tiempo de espera agotado para la descarga');
  }

  /// Obtiene la ruta completa del archivo descargado
  static Future<String> getDownloadedFilePath(String filename) async {
    final downloadDir = await _getDownloadDirectory();
    return '$downloadDir/$filename';
  }

  /// Cancela una descarga
  static Future<void> cancelDownload(String taskId) async {
    await FlutterDownloader.cancel(taskId: taskId);
  }

  /// Pausa una descarga
  static Future<void> pauseDownload(String taskId) async {
    await FlutterDownloader.pause(taskId: taskId);
  }

  /// Reanuda una descarga
  static Future<String?> resumeDownload(String taskId) async {
    return await FlutterDownloader.resume(taskId: taskId);
  }

  /// Abre un archivo descargado
  static Future<bool> openDownloadedFile(String taskId) async {
    return await FlutterDownloader.open(taskId: taskId);
  }

  /// Limpia el servicio
  static void dispose() {
    IsolateNameServer.removePortNameMapping(_portName);
  }
}
