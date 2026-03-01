import 'package:easy_localization/easy_localization.dart';
import 'package:taskflow/translations/locale_keys.g.dart';
import 'error.dart';

extension Message on NetworkError?{
  String get message => switch(this){
    InvalidCredentialsError() => LocaleKeys.invalid_credentials.tr(),
    InternetConnectionError() => LocaleKeys.network_error.tr(),
    _ => LocaleKeys.unknown_error.tr()
  };
}