import 'package:flutter/material.dart';
import 'package:taskflow/core/theming/text_theme.dart';
import 'app_colors.dart';
import 'light_theme.dart';

extension ThemeX on BuildContext {
  AppColors get colors => Theme.of(this).extension<AppColors>()
      ?? lightColors;

  TextTheme get textStyles => Theme.of(this).textTheme;
}

extension ThemeX2 on AppColors {
  CardThemeData get cardTheme => CardThemeData(
    color: card,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
      side: BorderSide(color: border),
    ),
  );

  OutlinedButtonThemeData get outlinedButtonTheme => OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          foregroundColor: foreground,
          backgroundColor: secondary,
          side: BorderSide(color: border),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)
          ),
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14)
      )
  );

  ElevatedButtonThemeData get elevatedButtonTheme => ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      minimumSize: Size.fromHeight(0),
      backgroundColor: accentEmerald,
      foregroundColor: primaryForeground,
      disabledBackgroundColor: accentEmerald.withValues(alpha: 0.6),
      disabledForegroundColor: primaryForeground.withValues(alpha: 0.7),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(
          horizontal: 18, vertical: 14
      ),
    )
  );

  InputDecorationTheme get inputDecorationTheme => InputDecorationTheme(
    filled: true,
    fillColor: card,
    hintStyle: textTheme.bodyMedium?.copyWith(
        color: mutedForeground.withValues(alpha: 0.7)
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: border),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: border),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: ring, width: 2),
    ),
  );
}