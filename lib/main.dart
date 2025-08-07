import 'package:attendance_app/src/core/app/app.dart';
import 'package:attendance_app/src/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ApiServiceVariables.loadEnv();

  runApp(ProviderScope(child: const AttendanceApp()));
}
