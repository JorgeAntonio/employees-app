import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/core/router/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AttendanceApp extends ConsumerWidget {
  const AttendanceApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextTheme textTheme = createTextTheme(context, "Poppins", "Mochiy Pop One");

    MaterialTheme theme = MaterialTheme(textTheme);

    final router = ref.watch(routerProvider);

    return FlutterAppCloseKeyboard(
      app: MaterialApp.router(
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate,
        routeInformationProvider: router.routeInformationProvider,
        debugShowCheckedModeBanner: false,
        title: 'Attendance App',
        themeMode: ThemeMode.light,
        theme: theme.light(),
        darkTheme: theme.dark(),
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
      ),
    );
  }
}
