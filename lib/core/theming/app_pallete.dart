import 'dart:ui' show Color;
import 'package:flutter/cupertino.dart' show LinearGradient, Alignment, Offset, BoxShadow;

abstract class AppPalette {
  // --- Light colors ---
  static const backgroundLight = Color(0xFFFFFFFF);
  static const primaryForegroundDark = Color(0xFF0F1729);
  static const primaryForegroundLight = Color(0xFFF8FAFC);
  static const secondaryLight = Color(0xFFF1F5F9);
  static const mutedForegroundLight = Color(0xFF65758B);
  static const surfaceSunkenLight = Color(0xFFF3F4F6);
  static const destructiveLight = Color(0xFFEF4343);// priorityHigh
  static const borderLight = Color(0xFFE1E7EF); // priorityMedium

  // Accents
  static const accentGreen = Color(0xFF21C45D); //priorityLow
  static const accentAmber = Color(0xFFF59F0A);
  static const accentCoral = Color(0xFFE76E50);
  static const accentEmerald = Color(0xFF10B77F);
  static const accentViolet = Color(0xFF6B26D9);
  static const accentSky = Color(0xFF0DA2E7);

  // --- Dark Colors ---
  static const backgroundDark = Color(0xFF080C16);
  static const cardDark = Color(0xFF0B111E);
  static const secondaryDark = Color(0xFF1D283A);
  static const mutedForegroundDark = Color(0xFF94A3B8);
  static const destructiveDark = Color(0xFF7C1D1D);
  static const ringDark = Color(0xFFCBD5E1);
  static const surfaceElevatedDark = Color(0xFF0E1525);
  static const surfaceSunkenDark = Color(0xFF05080F);

  // Shadows
  static const shadowSmLight = [
    BoxShadow(
      color: Color(0x0D000000), // ~5%
      blurRadius: 2,
      offset: Offset(0, 1),
    ),
  ];

  static const shadowMdLight = [
    BoxShadow(color: Color(0x1A000000), blurRadius: 6, offset: Offset(0, 4)),
    BoxShadow(color: Color(0x1A000000), blurRadius: 4, offset: Offset(0, 2)),
  ];

  static const shadowLgLight = [
    BoxShadow(color: Color(0x1A000000), blurRadius: 15, offset: Offset(0, 10)),
    BoxShadow(color: Color(0x1A000000), blurRadius: 6, offset: Offset(0, 4)),
  ];

  static const shadowXlLight = [
    BoxShadow(color: Color(0x1A000000), blurRadius: 25, offset: Offset(0, 20)),
    BoxShadow(color: Color(0x1A000000), blurRadius: 10, offset: Offset(0, 8)),
  ];

  static const shadowSmDark = [
    BoxShadow(color: Color(0x4D000000), blurRadius: 2, offset: Offset(0, 1)), // ~30%
  ];

  static const shadowMdDark = [
    BoxShadow(color: Color(0x66000000), blurRadius: 6, offset: Offset(0, 4)), // ~40%
    BoxShadow(color: Color(0x4D000000), blurRadius: 4, offset: Offset(0, 2)), // ~30%
  ];

  static const shadowLgDark = [
    BoxShadow(color: Color(0x66000000), blurRadius: 15, offset: Offset(0, 10)), // ~40%
    BoxShadow(color: Color(0x4D000000), blurRadius: 6, offset: Offset(0, 4)),  // ~30%
  ];

  // Gradients
  static const gradientPrimary = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [accentCoral, accentViolet],
  );

  static const gradientAi = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [accentViolet, accentSky],
  );
}