import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF123F82), // Azul BCP
      surfaceTint: Color(0xFF123F82),
      onPrimary: Color(0xFFFFFFFF), // Texto sobre azul
      primaryContainer: Color(0xFFE1ECF8),
      onPrimaryContainer: Color(0xFF002D5A),

      secondary: Color(0xFFFF6A00), // Naranja vibrante BCP
      onSecondary: Color(0xFFFFFFFF), // Texto blanco
      secondaryContainer: Color(0xFFFFE4D5),
      onSecondaryContainer: Color(0xFF7B2E00),

      tertiary: Color(0xFF5D5B7D),
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFFE3DFFF),
      onTertiaryContainer: Color(0xFF454364),

      error: Color(0xFFBA1A1A),
      onError: Color(0xFFFFFFFF),
      errorContainer: Color(0xFFFFDAD6),
      onErrorContainer: Color(0xFF93000A),

      surface: Color(0xFFF6F9FC), // Fondo de la app
      onSurface: Color(0xFF1A1A1A),
      onSurfaceVariant: Color(0xFF40484C),

      outline: Color(0xFF70787D),
      outlineVariant: Color(0xFFC0C8CD),

      shadow: Color(0xFF000000),
      scrim: Color(0xFF000000),

      inverseSurface: Color(0xFF2C3134),
      inversePrimary: Color(0xFF8BD0EF),

      primaryFixed: Color(0xFFBEE9FF),
      onPrimaryFixed: Color(0xFF001F2A),
      primaryFixedDim: Color(0xFF8BD0EF),
      onPrimaryFixedVariant: Color(0xFF004D64),

      secondaryFixed: Color(0xFFFFE4D5),
      onSecondaryFixed: Color(0xFF7B2E00),
      secondaryFixedDim: Color(0xFFFF9C4A),
      onSecondaryFixedVariant: Color(0xFF7B2E00),

      tertiaryFixed: Color(0xFFE3DFFF),
      onTertiaryFixed: Color(0xFF1A1836),
      tertiaryFixedDim: Color(0xFFC6C2EA),
      onTertiaryFixedVariant: Color(0xFF454364),

      surfaceDim: Color(0xFFD6DBDE),
      surfaceBright: Color(0xFFF6F9FC),
      surfaceContainerLowest: Color(0xFFFFFFFF),
      surfaceContainerLow: Color(0xFFF0F4F8),
      surfaceContainer: Color(0xFFEAEFF4),
      surfaceContainerHigh: Color(0xFFE4E9EC),
      surfaceContainerHighest: Color(0xFFDDE3E8),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,

      // Azul principal del BCP (modo oscuro)
      primary: Color(0xFF8BD0EF), // azul claro para destacar
      surfaceTint: Color(0xFF123F82),
      onPrimary: Color(0xFF001F2A),

      primaryContainer: Color(0xFF123F82), // azul BCP oscuro
      onPrimaryContainer: Color(0xFFBEE9FF),

      // Naranja vibrante del BCP
      secondary: Color(0xFFFF6A00),
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Color(0xFF7B2E00),
      onSecondaryContainer: Color(0xFFFFE4D5),

      // Terciario (neutral púrpura/gris)
      tertiary: Color(0xFFC6C2EA),
      onTertiary: Color(0xFF2F2D4D),
      tertiaryContainer: Color(0xFF454364),
      onTertiaryContainer: Color(0xFFE3DFFF),

      // Colores de error
      error: Color(0xFFFFB4AB),
      onError: Color(0xFF690005),
      errorContainer: Color(0xFF93000A),
      onErrorContainer: Color(0xFFFFDAD6),

      // Superficies (fondos)
      surface: Color(0xFF0F1417), // gris muy oscuro
      onSurface: Color(0xFFE5E8EA),
      onSurfaceVariant: Color(0xFFB0B6BA),

      outline: Color(0xFF7A8287),
      outlineVariant: Color(0xFF3A4145),

      shadow: Color(0xFF000000),
      scrim: Color(0xFF000000),

      inverseSurface: Color(0xFFDDE3E8),
      inversePrimary: Color(0xFF123F82),

      // Fijos
      primaryFixed: Color(0xFFBEE9FF),
      onPrimaryFixed: Color(0xFF001F2A),
      primaryFixedDim: Color(0xFF8BD0EF),
      onPrimaryFixedVariant: Color(0xFF004D64),

      secondaryFixed: Color(0xFFFFE4D5),
      onSecondaryFixed: Color(0xFF7B2E00),
      secondaryFixedDim: Color(0xFFFF9C4A),
      onSecondaryFixedVariant: Color(0xFF7B2E00),

      tertiaryFixed: Color(0xFFE3DFFF),
      onTertiaryFixed: Color(0xFF1A1836),
      tertiaryFixedDim: Color(0xFFC6C2EA),
      onTertiaryFixedVariant: Color(0xFF454364),

      // Contenedores de superficie
      surfaceDim: Color(0xFF0F1417),
      surfaceBright: Color(0xFF2B3033),
      surfaceContainerLowest: Color(0xFF0A0F11),
      surfaceContainerLow: Color(0xFF171C1F),
      surfaceContainer: Color(0xFF1B2023),
      surfaceContainerHigh: Color(0xFF262B2E),
      surfaceContainerHighest: Color(0xFF303538),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: textTheme.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    ),
    scaffoldBackgroundColor: colorScheme.surface,
    canvasColor: colorScheme.surface,
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
