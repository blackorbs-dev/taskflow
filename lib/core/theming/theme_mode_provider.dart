import 'package:flutter/material.dart' show ThemeMode;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce/hive.dart';

import '../constants/store_keys.dart';

final themeModeProvider = NotifierProvider(ThemeModeNotifier.new);

class ThemeModeNotifier extends Notifier<ThemeMode> {
  static const _keyThemeMode = 'theme_mode';

  late final Box<String> _box;

  @override
  ThemeMode build() {
    _box = Hive.box(StoreKeys.settingsBox);

    final saved = _box.get(_keyThemeMode);
    return ThemeMode.values.firstWhere(
      (mode) => mode.name == saved,
      orElse: () => ThemeMode.system,
    );
  }

  void setThemeMode(ThemeMode mode) {
    state = mode;
    _box.put(_keyThemeMode, mode.name);
  }

  void toggleLightDark() {
    final next = state == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    setThemeMode(next);
  }

  /// cycle system -> light -> dark -> system
  void cycle() {
    final next = switch (state) {
      ThemeMode.system => ThemeMode.light,
      ThemeMode.light => ThemeMode.dark,
      ThemeMode.dark => ThemeMode.system,
    };
    setThemeMode(next);
  }
}
