import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_pallete.dart';
import 'theme_extensions.dart';
import 'text_theme.dart';

ThemeData get darkTheme {
  final colors = darkColors;

  final scheme = ColorScheme(
    brightness: Brightness.dark,
    primary: colors.primaryForeground,
    onPrimary: colors.foreground,
    secondary: colors.secondary,
    onSecondary: colors.foreground,
    error: colors.destructive,
    onError: colors.destructiveForeground,
    surface: colors.background,
    onSurface: colors.foreground,
  );

  return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: scheme,
      scaffoldBackgroundColor: colors.background,
      fontFamily: 'Rubik',
      extensions: [ colors ],
      dividerTheme: DividerThemeData(
          color: colors.border,
          thickness: 1,
          space: 1
      ),
      elevatedButtonTheme: colors.elevatedButtonTheme,
      outlinedButtonTheme: colors.outlinedButtonTheme,
      inputDecorationTheme: colors.inputDecorationTheme,
      cardTheme: colors.cardTheme,
      textTheme: textTheme
  );
}

AppColors get darkColors => const AppColors(
  background: AppPalette.backgroundDark,
  card: AppPalette.cardDark,
  foreground: AppPalette.primaryForegroundLight,
  primaryForeground: AppPalette.primaryForegroundDark,
  destructiveForeground: AppPalette.primaryForegroundLight,
  secondary: AppPalette.secondaryDark,
  mutedForeground: AppPalette.mutedForegroundDark,
  destructive: AppPalette.destructiveLight,
  border: AppPalette.secondaryDark,
  ring: AppPalette.ringDark,
  surfaceElevated: AppPalette.surfaceElevatedDark,
  surfaceSunken: AppPalette.surfaceSunkenDark,
  accentGreen: AppPalette.accentGreen,
  accentCoral: AppPalette.accentCoral,
  accentAmber: AppPalette.accentAmber,
  accentEmerald: AppPalette.accentEmerald,
  accentViolet: AppPalette.accentViolet,
  accentSky: AppPalette.accentSky,
);