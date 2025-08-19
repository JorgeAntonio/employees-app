import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xfffd4244),
      surfaceTint: Color(0xff904a45),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffdad6),
      onPrimaryContainer: Color(0xff73332f),
      secondary: Color(0xff000000),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffdad6),
      onSecondaryContainer: Color(0xff5d3f3d),
      tertiary: Color(0xff725b2e),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffdea6),
      onTertiaryContainer: Color(0xff584319),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff231918),
      onSurfaceVariant: Color(0xff534342),
      outline: Color(0xff857371),
      outlineVariant: Color(0xffd8c2bf),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff392e2d),
      inversePrimary: Color(0xffffb3ad),
      primaryFixed: Color(0xffffdad6),
      onPrimaryFixed: Color(0xff3b0908),
      primaryFixedDim: Color(0xffffb3ad),
      onPrimaryFixedVariant: Color(0xff73332f),
      secondaryFixed: Color(0xffffdad6),
      onSecondaryFixed: Color(0xff2c1513),
      secondaryFixedDim: Color(0xffe7bdb9),
      onSecondaryFixedVariant: Color(0xff5d3f3d),
      tertiaryFixed: Color(0xffffdea6),
      onTertiaryFixed: Color(0xff261900),
      tertiaryFixedDim: Color(0xffe1c28c),
      onTertiaryFixedVariant: Color(0xff584319),
      surfaceDim: Color(0xffe8d6d4),
      surfaceBright: Color(0xfffff8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0ef),
      surfaceContainer: Color(0xfffceae8),
      surfaceContainerHigh: Color(0xfff6e4e2),
      surfaceContainerHighest: Color(0xfff1dedd),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb3ad),
      surfaceTint: Color(0xffffb3ad),
      onPrimary: Color(0xff571e1b),
      primaryContainer: Color(0xff73332f),
      onPrimaryContainer: Color(0xffffdad6),
      secondary: Color(0xffe7bdb9),
      onSecondary: Color(0xff442927),
      secondaryContainer: Color(0xff5d3f3d),
      onSecondaryContainer: Color(0xffffdad6),
      tertiary: Color(0xffe1c28c),
      onTertiary: Color(0xff402d04),
      tertiaryContainer: Color(0xff584319),
      onTertiaryContainer: Color(0xffffdea6),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff1a1110),
      onSurface: Color(0xfff1dedd),
      onSurfaceVariant: Color(0xffd8c2bf),
      outline: Color(0xffa08c8a),
      outlineVariant: Color(0xff534342),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff1dedd),
      inversePrimary: Color(0xff904a45),
      primaryFixed: Color(0xffffdad6),
      onPrimaryFixed: Color(0xff3b0908),
      primaryFixedDim: Color(0xffffb3ad),
      onPrimaryFixedVariant: Color(0xff73332f),
      secondaryFixed: Color(0xffffdad6),
      onSecondaryFixed: Color(0xff2c1513),
      secondaryFixedDim: Color(0xffe7bdb9),
      onSecondaryFixedVariant: Color(0xff5d3f3d),
      tertiaryFixed: Color(0xffffdea6),
      onTertiaryFixed: Color(0xff261900),
      tertiaryFixedDim: Color(0xffe1c28c),
      onTertiaryFixedVariant: Color(0xff584319),
      surfaceDim: Color(0xff1a1110),
      surfaceBright: Color(0xff423736),
      surfaceContainerLowest: Color(0xff140c0b),
      surfaceContainerLow: Color(0xff231918),
      surfaceContainer: Color(0xff271d1c),
      surfaceContainerHigh: Color(0xff322827),
      surfaceContainerHighest: Color(0xff3d3231),
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
