import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_info.freezed.dart';

@freezed
abstract class LoginInfo with _$LoginInfo {
  const LoginInfo._();

  const factory LoginInfo({
    @Default('') String email,
    @Default('') String password,
  }) = _LoginInfo;

  bool get isValid =>  email.isNotEmpty && password.isNotEmpty;
}
