import 'package:taskflow/core/error/error.dart';
import 'package:taskflow/core/network/response.dart';
import '../models/login_info.dart';
import '../models/signup_info.dart';

abstract class AuthRepository {
  Future<Response<void, NetworkError>> login(LoginInfo loginInfo);
  Future<Response<void, NetworkError>> register(SignupInfo signupInfo);
  Future<void> logout();
}