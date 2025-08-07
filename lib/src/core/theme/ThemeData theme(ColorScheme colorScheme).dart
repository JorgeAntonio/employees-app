// ThemeData theme(ColorScheme colorScheme) => ThemeData(
//   useMaterial3: true,
//   brightness: colorScheme.brightness,
//   colorScheme: colorScheme,
//   textTheme: textTheme.apply(
//     bodyColor: colorScheme.onSurface,
//     displayColor: colorScheme.onSurface,
//   ),
//   scaffoldBackgroundColor: colorScheme.surface,
//   pageTransitionsTheme: const PageTransitionsTheme(
//     builders: {
//       TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
//       TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
//       TargetPlatform.linux: FadeForwardsPageTransitionsBuilder(),
//       TargetPlatform.windows: FadeForwardsPageTransitionsBuilder(),
//       TargetPlatform.android: FadeForwardsPageTransitionsBuilder(),
//       TargetPlatform.fuchsia: FadeForwardsPageTransitionsBuilder(),
//     },
//   ),
//   inputDecorationTheme: InputDecorationTheme(
//     hintStyle: TextStyle(color: colorScheme.onSurface.withValues(alpha: 0.6)),
//     labelStyle: TextStyle(color: colorScheme.onSurface.withValues(alpha: 0.6)),
//     errorStyle: TextStyle(color: colorScheme.error),
//     prefixIconColor: colorScheme.onSurface.withValues(alpha: 0.6),
//     suffixIconColor: colorScheme.onSurface.withValues(alpha: 0.6),
//     prefixStyle: TextStyle(
//       color: colorScheme.onSurface.withValues(alpha: 0.6),
//       decorationColor: colorScheme.onSurface.withValues(alpha: 0.6),
//     ),
//     suffixStyle: TextStyle(
//       color: colorScheme.onSurface.withValues(alpha: 0.6),
//       decorationColor: colorScheme.onSurface.withValues(alpha: 0.6),
//     ),
//     filled: true,
//     fillColor: colorScheme.surfaceContainerHighest,
//     contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
//     border: OutlineInputBorder(
//       borderRadius: BorderRadius.circular(32.0),
//       borderSide: BorderSide.none,
//     ),
//     enabledBorder: OutlineInputBorder(
//       borderSide: BorderSide.none,
//       borderRadius: BorderRadius.circular(32.0),
//     ),
//     focusedBorder: OutlineInputBorder(
//       borderSide: BorderSide(
//         color: colorScheme.secondary.withValues(alpha: 0.6),
//         width: 1.0,
//       ),
//       borderRadius: BorderRadius.circular(16.0),
//     ),
//     focusedErrorBorder: OutlineInputBorder(
//       borderSide: BorderSide(color: colorScheme.error),
//       borderRadius: BorderRadius.circular(32.0),
//     ),
//     errorBorder: OutlineInputBorder(
//       borderSide: BorderSide(color: colorScheme.error),
//       borderRadius: BorderRadius.circular(32.0),
//     ),
//   ),

//   searchBarTheme: SearchBarThemeData(
//     backgroundColor: WidgetStateProperty.all(
//       colorScheme.surfaceContainerHighest,
//     ),
//     elevation: WidgetStateProperty.all(0),
//   ),

//   filledButtonTheme: FilledButtonThemeData(
//     // style: ButtonStyle(
//     //   shape: WidgetStateProperty.all(
//     //     RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
//     //   ),
//     //   backgroundColor: WidgetStateProperty.all(colorScheme.primary),
//     //   foregroundColor: WidgetStateProperty.all(colorScheme.onPrimary),
//     // ),
//   ),

//   outlinedButtonTheme: OutlinedButtonThemeData(
//     style: OutlinedButton.styleFrom(
//       side: BorderSide(color: colorScheme.primary),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
//     ),
//   ),
// );
