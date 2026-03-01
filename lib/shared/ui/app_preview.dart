import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taskflow/core/theming/dark_theme.dart';
import 'package:taskflow/core/theming/light_theme.dart';

final class AppPreview extends Preview {
  const AppPreview({
    super.name,
    super.group,
    super.size,
    super.textScaleFactor,
    super.brightness,
    super.localizations,
  }) : super(
    theme: AppPreview.themeBuilder,
    wrapper: AppPreview.mainWrapper,
  );

  static PreviewThemeData themeBuilder() {
    return PreviewThemeData(
      materialLight: lightTheme,
      materialDark: darkTheme,
    );
  }

  static Widget mainWrapper(Widget child) {
    return FutureBuilder(
      future: EasyLocalization.ensureInitialized(),
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const MaterialApp(home: SizedBox.shrink());
        }

        return EasyLocalization(
          supportedLocales: const [Locale('en')],
          path: 'packages/taskflow/assets/translations',
          fallbackLocale: const Locale('en'),
          useOnlyLangCode: true,
          child: ProviderScope(
            child: Builder(
              builder: (context) {
                return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  theme: lightTheme,
                  darkTheme: darkTheme,
                  localizationsDelegates: context.localizationDelegates,
                  supportedLocales: context.supportedLocales,
                  locale: context.locale,
                  home: Scaffold(body: child),
                );
              },
            ),
          ),
        );
      },
    );
  }
}

