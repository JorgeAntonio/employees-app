import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff1A1A1A), // Negro elegante como primario
      surfaceTint: Color(0xff1A1A1A),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff3A3A3A), // Negro más claro para containers
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xffD32F2F), // Rojo más vibrante como secundario
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffdad9),
      onSecondaryContainer: Color(0xff5d1414), // Rojo más oscuro para texto
      tertiary: Color(0xff745a2f),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffdead),
      onTertiaryContainer: Color(0xff5a4319),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfff8f8f8), // Gris muy claro para fondo
      onSurface: Color(0xff1A1A1A), // Negro para texto principal
      onSurfaceVariant: Color(0xff444444), // Gris oscuro para texto secundario
      outline: Color(0xffcccccc),
      outlineVariant: Color(0xffe0e0e0),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e2e2e),
      inversePrimary: Color(0xffa0a0a0),
      primaryFixed: Color(0xff3A3A3A),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff2A2A2A),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xffffdad9),
      onSecondaryFixed: Color(0xff2c1515),
      secondaryFixedDim: Color(0xffe6bdbb),
      onSecondaryFixedVariant: Color(0xff5d3f3f),
      tertiaryFixed: Color(0xffffdead),
      onTertiaryFixed: Color(0xff281900),
      tertiaryFixedDim: Color(0xffe4c18d),
      onTertiaryFixedVariant: Color(0xff5a4319),
      surfaceDim: Color(0xffd8d8d8),
      surfaceBright: Color(0xfff8f8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff2f2f2),
      surfaceContainer: Color(0xffececec),
      surfaceContainerHigh: Color(0xffe6e6e6),
      surfaceContainerHighest: Color(0xffe0e0e0),
    );
  }

  ThemeData light() =>
      ThemeData.from(colorScheme: lightScheme(), useMaterial3: true);

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff000000),
      surfaceTint: Color(0xff1A1A1A),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff444444),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xffa32020),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffe06666),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff48320a),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff84693c),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff8f8f8),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff3a3a3a),
      outline: Color(0xff575757),
      outlineVariant: Color(0xff737373),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e2e2e),
      inversePrimary: Color(0xffa0a0a0),
      primaryFixed: Color(0xff444444),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff2c2c2c),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xffe06666),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xffc14c4c),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff84693c),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff6a5026),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd8d8d8),
      surfaceBright: Color(0xfff8f8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff2f2f2),
      surfaceContainer: Color(0xffececec),
      surfaceContainerHigh: Color(0xffe6e6e6),
      surfaceContainerHighest: Color(0xffe0e0e0),
    );
  }

  ThemeData lightMediumContrast() => ThemeData.from(
    colorScheme: lightMediumContrastScheme(),
    useMaterial3: true,
  );

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff000000),
      surfaceTint: Color(0xff1A1A1A),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff2a2a2a),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff5c0a0a),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffa32020),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff271a00),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff4d3a12),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff8f8f8),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff232323),
      outlineVariant: Color(0xff232323),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e2e2e),
      inversePrimary: Color(0xffe6e6e6),
      primaryFixed: Color(0xff2a2a2a),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff000000),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xffa32020),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff800000),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff4d3a12),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff332400),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd8d8d8),
      surfaceBright: Color(0xfff8f8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff2f2f2),
      surfaceContainer: Color(0xffececec),
      surfaceContainerHigh: Color(0xffe6e6e6),
      surfaceContainerHighest: Color(0xffe0e0e0),
    );
  }

  ThemeData lightHighContrast() => ThemeData.from(
    colorScheme: lightHighContrastScheme(),
    useMaterial3: true,
  );

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffcccccc), // Gris claro para texto/iconos primarios
      surfaceTint: Color(0xffcccccc),
      onPrimary: Color(0xff1a1a1a),
      primaryContainer: Color(0xff444444), // Gris medio para containers
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xffff8a80), // Rojo más claro para modo oscuro
      onSecondary: Color(0xff1a1a1a),
      secondaryContainer: Color(0xffb71c1c), // Rojo oscuro para containers
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xffe4c18d),
      onTertiary: Color(0xff412c05),
      tertiaryContainer: Color(0xff5a4319),
      onTertiaryContainer: Color(0xffffdead),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff121212), // Negro profundo para fondo
      onSurface: Color(0xffe0e0e0), // Gris claro para texto
      onSurfaceVariant: Color(0xffb3b3b3), // Gris medio para texto secundario
      outline: Color(0xff7d7d7d),
      outlineVariant: Color(0xff444444),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e0e0),
      inversePrimary: Color(0xff1a1a1a),
      primaryFixed: Color(0xff444444),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff2a2a2a),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xffffdad9),
      onSecondaryFixed: Color(0xff2c1515),
      secondaryFixedDim: Color(0xffe6bdbb),
      onSecondaryFixedVariant: Color(0xff5d3f3f),
      tertiaryFixed: Color(0xffffdead),
      onTertiaryFixed: Color(0xff281900),
      tertiaryFixedDim: Color(0xffe4c18d),
      onTertiaryFixedVariant: Color(0xff5a4319),
      surfaceDim: Color(0xff121212),
      surfaceBright: Color(0xff3b3b3b),
      surfaceContainerLowest: Color(0xff0d0d0d),
      surfaceContainerLow: Color(0xff1a1a1a),
      surfaceContainer: Color(0xff1f1f1f),
      surfaceContainerHigh: Color(0xff292929),
      surfaceContainerHighest: Color(0xff343434),
    );
  }

  ThemeData dark() =>
      ThemeData.from(colorScheme: darkScheme(), useMaterial3: true);

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffffff),
      surfaceTint: Color(0xffcccccc),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffa0a0a0),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffffbeb5),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffe57373),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffbd7a1),
      onTertiary: Color(0xff352200),
      tertiaryContainer: Color(0xffab8c5c),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff121212),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffeeeeee),
      outline: Color(0xffc2c2c2),
      outlineVariant: Color(0xff9f9f9f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e0e0),
      inversePrimary: Color(0xff333333),
      primaryFixed: Color(0xffe0e0e0),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffcccccc),
      onPrimaryFixedVariant: Color(0xff000000),
      secondaryFixed: Color(0xffffdad9),
      onSecondaryFixed: Color(0xff200b0b),
      secondaryFixedDim: Color(0xffe6bdbb),
      onSecondaryFixedVariant: Color(0xff4a2f2f),
      tertiaryFixed: Color(0xffffdead),
      onTertiaryFixed: Color(0xff1a0f00),
      tertiaryFixedDim: Color(0xffe4c18d),
      onTertiaryFixedVariant: Color(0xff48320a),
      surfaceDim: Color(0xff121212),
      surfaceBright: Color(0xff4d4d4d),
      surfaceContainerLowest: Color(0xff0d0d0d),
      surfaceContainerLow: Color(0xff1a1a1a),
      surfaceContainer: Color(0xff1f1f1f),
      surfaceContainerHigh: Color(0xff292929),
      surfaceContainerHighest: Color(0xff343434),
    );
  }

  ThemeData darkMediumContrast() => ThemeData.from(
    colorScheme: darkMediumContrastScheme(),
    useMaterial3: true,
  );

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffffff),
      surfaceTint: Color(0xffcccccc),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffe0e0e0),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffff9f9),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffffb3b3),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffff8e1),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffe4c18d),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff121212),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffffffff),
      outlineVariant: Color(0xffffffff),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e0e0),
      inversePrimary: Color(0xff333333),
      primaryFixed: Color(0xffffffff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffe0e0e0),
      onPrimaryFixedVariant: Color(0xff000000),
      secondaryFixed: Color(0xffffe2e0),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffffb3b2),
      onSecondaryFixedVariant: Color(0xff000000),
      tertiaryFixed: Color(0xffffe7bc),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffe4c18d),
      onTertiaryFixedVariant: Color(0xff000000),
      surfaceDim: Color(0xff121212),
      surfaceBright: Color(0xff666666),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff1a1a1a),
      surfaceContainer: Color(0xff1f1f1f),
      surfaceContainerHigh: Color(0xff292929),
      surfaceContainerHighest: Color(0xff343434),
    );
  }

  ThemeData darkHighContrast() =>
      ThemeData.from(colorScheme: darkHighContrastScheme(), useMaterial3: true);

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: textTheme.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    ),
    scaffoldBackgroundColor: colorScheme.surface,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.linux: FadeForwardsPageTransitionsBuilder(),
        TargetPlatform.windows: FadeForwardsPageTransitionsBuilder(),
        TargetPlatform.android: FadeForwardsPageTransitionsBuilder(),
        TargetPlatform.fuchsia: FadeForwardsPageTransitionsBuilder(),
      },
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(color: colorScheme.onSurface.withValues(alpha: 0.6)),
      labelStyle: TextStyle(
        color: colorScheme.onSurface.withValues(alpha: 0.6),
      ),
      errorStyle: TextStyle(color: colorScheme.error),
      prefixIconColor: colorScheme.onSurface.withValues(alpha: 0.6),
      suffixIconColor: colorScheme.onSurface.withValues(alpha: 0.6),
      prefixStyle: TextStyle(
        color: colorScheme.onSurface.withValues(alpha: 0.6),
        decorationColor: colorScheme.onSurface.withValues(alpha: 0.6),
      ),
      suffixStyle: TextStyle(
        color: colorScheme.onSurface.withValues(alpha: 0.6),
        decorationColor: colorScheme.onSurface.withValues(alpha: 0.6),
      ),
      filled: true,
      fillColor: colorScheme.surfaceContainerHighest,
      contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.0),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(16.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: colorScheme.secondary.withValues(alpha: 0.6),
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: colorScheme.error),
        borderRadius: BorderRadius.circular(16.0),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: colorScheme.error),
        borderRadius: BorderRadius.circular(16.0),
      ),
    ),

    searchBarTheme: SearchBarThemeData(
      backgroundColor: WidgetStateProperty.all(
        colorScheme.surfaceContainerHighest,
      ),
      elevation: WidgetStateProperty.all(0),
    ),

    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        ),
        backgroundColor: WidgetStateProperty.all(colorScheme.primary),
        foregroundColor: WidgetStateProperty.all(colorScheme.onPrimary),
      ),
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: colorScheme.primary),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
    ),

    cardTheme: CardThemeData(
      surfaceTintColor: colorScheme.surfaceTint,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      margin: EdgeInsets.zero,
    ),
  );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
