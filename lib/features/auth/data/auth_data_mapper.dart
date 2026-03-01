import '../domain/models/login_info.dart';
import '../domain/models/signup_info.dart';
import '../../../shared/domain/user.dart';
import 'network/dto/auth_response_dto.dart';
import 'network/dto/login_dto.dart';
import 'network/dto/signup_dto.dart';

extension DomainMapper on UserDto{
  User toDomain() => User(
    name: name,
    email: email,
  );
}

extension LoginDataMapper on LoginInfo{
  LoginDto toDto() => LoginDto(
    email: email,
    password: password,
  );
}

extension SignupDataMapper on SignupInfo{
  SignupDto toDto() => SignupDto(
    name: name,
    email: email,
    password: password,
  );
}