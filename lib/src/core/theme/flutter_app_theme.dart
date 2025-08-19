import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xfffd4547),
      surfaceTint: Color(0xff8f4951),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffdadb),
      onPrimaryContainer: Color(0xff72333b),
      secondary: Color(0xff161515),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffe1e0ff),
      onSecondaryContainer: Color(0xff404178),
      tertiary: Color(0xff775930),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffddb5),
      onTertiaryContainer: Color(0xff5d411b),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff22191a),
      onSurfaceVariant: Color(0xff524344),
      outline: Color(0xff857374),
      outlineVariant: Color(0xffd7c1c2),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382e2e),
      inversePrimary: Color(0xffffb2b9),
      primaryFixed: Color(0xffffdadb),
      onPrimaryFixed: Color(0xff3b0712),
      primaryFixedDim: Color(0xffffb2b9),
      onPrimaryFixedVariant: Color(0xff72333b),
      secondaryFixed: Color(0xffe1e0ff),
      onSecondaryFixed: Color(0xff13144a),
      secondaryFixedDim: Color(0xffc1c1ff),
      onSecondaryFixedVariant: Color(0xff404178),
      tertiaryFixed: Color(0xffffddb5),
      onTertiaryFixed: Color(0xff2a1800),
      tertiaryFixedDim: Color(0xffe8c08e),
      onTertiaryFixedVariant: Color(0xff5d411b),
      surfaceDim: Color(0xffe7d6d6),
      surfaceBright: Color(0xfffff8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0f0),
      surfaceContainer: Color(0xfffceaea),
      surfaceContainerHigh: Color(0xfff6e4e4),
      surfaceContainerHighest: Color(0xfff0dedf),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb2b9),
      surfaceTint: Color(0xffffb2b9),
      onPrimary: Color(0xff561d25),
      primaryContainer: Color(0xff72333b),
      onPrimaryContainer: Color(0xffffdadb),
      secondary: Color(0xffc1c1ff),
      onSecondary: Color(0xff292a60),
      secondaryContainer: Color(0xff404178),
      onSecondaryContainer: Color(0xffe1e0ff),
      tertiary: Color(0xffe8c08e),
      onTertiary: Color(0xff442b06),
      tertiaryContainer: Color(0xff5d411b),
      onTertiaryContainer: Color(0xffffddb5),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff1a1112),
      onSurface: Color(0xfff0dedf),
      onSurfaceVariant: Color(0xffd7c1c2),
      outline: Color(0xff9f8c8d),
      outlineVariant: Color(0xff524344),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff0dedf),
      inversePrimary: Color(0xff8f4951),
      primaryFixed: Color(0xffffdadb),
      onPrimaryFixed: Color(0xff3b0712),
      primaryFixedDim: Color(0xffffb2b9),
      onPrimaryFixedVariant: Color(0xff72333b),
      secondaryFixed: Color(0xffe1e0ff),
      onSecondaryFixed: Color(0xff13144a),
      secondaryFixedDim: Color(0xffc1c1ff),
      onSecondaryFixedVariant: Color(0xff404178),
      tertiaryFixed: Color(0xffffddb5),
      onTertiaryFixed: Color(0xff2a1800),
      tertiaryFixedDim: Color(0xffe8c08e),
      onTertiaryFixedVariant: Color(0xff5d411b),
      surfaceDim: Color(0xff1a1112),
      surfaceBright: Color(0xff413737),
      surfaceContainerLowest: Color(0xff140c0d),
      surfaceContainerLow: Color(0xff22191a),
      surfaceContainer: Color(0xff271d1e),
      surfaceContainerHigh: Color(0xff312828),
      surfaceContainerHighest: Color(0xff3d3233),
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
