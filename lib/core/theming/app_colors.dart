import 'package:flutter/material.dart' show ThemeExtension, immutable, Color;

@immutable
class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.background,
    required this.foreground,
    required this.card,
    required this.primaryForeground,
    required this.secondary,
    required this.mutedForeground,
    required this.destructive,
    required this.destructiveForeground,
    required this.border,
    required this.ring,
    required this.surfaceElevated,
    required this.surfaceSunken,
    required this.accentGreen,
    required this.accentCoral,
    required this.accentAmber,
    required this.accentEmerald,
    required this.accentViolet,
    required this.accentSky,
  });

  final Color background;
  final Color foreground;
  final Color card;
  final Color primaryForeground;
  final Color secondary;
  final Color mutedForeground;
  final Color destructive;
  final Color destructiveForeground;
  final Color border;
  final Color ring;
  final Color surfaceElevated;
  final Color surfaceSunken;
  final Color accentGreen;
  final Color accentCoral;
  final Color accentAmber;
  final Color accentEmerald;
  final Color accentViolet;
  final Color accentSky;

  @override
  AppColors copyWith({
    Color? background,
    Color? foreground,
    Color? card,
    Color? primaryForeground,
    Color? secondary,
    Color? mutedForeground,
    Color? destructive,
    Color? destructiveForeground,
    Color? border,
    Color? ring,
    Color? surfaceElevated,
    Color? surfaceSunken,
    Color? accentGreen,
    Color? accentCoral,
    Color? accentAmber,
    Color? accentEmerald,
    Color? accentViolet,
    Color? accentSky,
  }) {
    return AppColors(
      background: background ?? this.background,
      foreground: foreground ?? this.foreground,
      card: card ?? this.card,
      primaryForeground: primaryForeground ?? this.primaryForeground,
      secondary: secondary ?? this.secondary,
      mutedForeground: mutedForeground ?? this.mutedForeground,
      destructive: destructive ?? this.destructive,
      destructiveForeground: destructiveForeground ?? this.destructiveForeground,
      border: border ?? this.border,
      ring: ring ?? this.ring,
      surfaceElevated: surfaceElevated ?? this.surfaceElevated,
      surfaceSunken: surfaceSunken ?? this.surfaceSunken,
      accentGreen: accentGreen ?? this.accentGreen,
      accentCoral: accentCoral ?? this.accentCoral,
      accentAmber: accentAmber ?? this.accentAmber,
      accentEmerald: accentEmerald ?? this.accentEmerald,
      accentViolet: accentViolet ?? this.accentViolet,
      accentSky: accentSky ?? this.accentSky,
    );
  }

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) return this;
    Color lc(Color a, Color b) => Color.lerp(a, b, t)!;

    return AppColors(
      background: lc(background, other.background),
      foreground: lc(foreground, other.foreground),
      card: lc(card, other.card),
      primaryForeground: lc(primaryForeground, other.primaryForeground),
      secondary: lc(secondary, other.secondary),
      mutedForeground: lc(mutedForeground, other.mutedForeground),
      destructive: lc(destructive, other.destructive),
      destructiveForeground: lc(destructiveForeground, other.destructiveForeground),
      border: lc(border, other.border),
      ring: lc(ring, other.ring),
      surfaceElevated: lc(surfaceElevated, other.surfaceElevated),
      surfaceSunken: lc(surfaceSunken, other.surfaceSunken),
      accentGreen: lc(accentGreen, other.accentGreen),
      accentCoral: lc(accentCoral, other.accentCoral),
      accentAmber: lc(accentAmber, other.accentAmber),
      accentEmerald: lc(accentEmerald, other.accentEmerald),
      accentViolet: lc(accentViolet, other.accentViolet),
      accentSky: lc(accentSky, other.accentSky),
    );
  }
}