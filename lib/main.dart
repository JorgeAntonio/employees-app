import 'package:attendance_app/src/core/app/app.dart';
import 'package:attendance_app/src/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ApiServiceVariables.loadEnv();

  // Initialize flutter_downloader
  await FlutterDownloader.initialize(
    debug: true, // Set to false in production
    ignoreSsl: true, // Set to false if using HTTPS
  );

  runApp(ProviderScope(child: const AttendanceApp()));
}
