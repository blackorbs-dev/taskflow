import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_pallete.dart';
import 'theme_extensions.dart';
import 'text_theme.dart';

ThemeData get lightTheme {
  final colors = lightColors;

  final scheme = ColorScheme(
    brightness: Brightness.light,
    primary: colors.foreground,
    onPrimary: colors.primaryForeground,
    secondary: colors.secondary,
    onSecondary: colors.foreground,
    error: colors.destructive,
    onError: colors.destructiveForeground,
    surface: colors.background,
    onSurface: colors.foreground,
  );

  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: scheme,
    scaffoldBackgroundColor: colors.background,
    fontFamily: 'Rubik',
    extensions: [colors],
    dividerTheme: DividerThemeData(
      color: colors.border,
      thickness: 1,
      space: 4
    ),
    elevatedButtonTheme: colors.elevatedButtonTheme,
    outlinedButtonTheme: colors.outlinedButtonTheme,
    inputDecorationTheme: colors.inputDecorationTheme,
    cardTheme: colors.cardTheme,
    textTheme: textTheme
  );
}

AppColors get lightColors => const AppColors(
  background: AppPalette.backgroundLight,
  card: AppPalette.backgroundLight,
  foreground: AppPalette.primaryForegroundDark,
  primaryForeground: AppPalette.primaryForegroundLight,
  destructiveForeground: AppPalette.primaryForegroundLight,
  secondary: AppPalette.secondaryLight,
  mutedForeground: AppPalette.mutedForegroundLight,
  destructive: AppPalette.destructiveLight,
  border: AppPalette.borderLight,
  ring: AppPalette.primaryForegroundDark,
  surfaceElevated: AppPalette.backgroundLight,
  surfaceSunken: AppPalette.surfaceSunkenLight,
  accentGreen: AppPalette.accentGreen,
  accentCoral: AppPalette.accentCoral,
  accentAmber: AppPalette.accentAmber,
  accentEmerald: AppPalette.accentEmerald,
  accentViolet: AppPalette.accentViolet,
  accentSky: AppPalette.accentSky,
);