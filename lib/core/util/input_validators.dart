import 'package:easy_localization/easy_localization.dart';
import 'package:taskflow/translations/locale_keys.g.dart';

abstract class InputValidator {
  static String? email(String? value) {
    final emailRegex = RegExp(r'^[\w-.]+@([\w-]+\.)+\w{2,4}$');
    if (!emailRegex.hasMatch(value?.trim() ?? '')) {
      return LocaleKeys.invalid_email.tr();
    }
    return null;
  }

  static String? password(String? value) {
    return (value ?? '').length < 6 ? LocaleKeys.invalid_password.tr() : null;
  }

  static String? required(String? value, String fieldNameKey) {
    if (value == null || value.isEmpty) {
      return LocaleKeys.required_field.tr(
          args: [tr(fieldNameKey)]
      );
    }
    return null;
  }
}
