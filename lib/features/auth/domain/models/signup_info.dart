import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_info.freezed.dart';

@freezed
abstract class SignupInfo with _$SignupInfo {
  const SignupInfo._();

  const factory SignupInfo({
    @Default('') String name,
    @Default('') String email,
    @Default('') String password,
  }) = _SignupInfo;

  bool get isValid => name.isNotEmpty && email.isNotEmpty && password.isNotEmpty;
}
