import 'package:dio/dio.dart';
import 'dto/auth_response_dto.dart';
import 'dto/login_dto.dart';
import 'dto/signup_dto.dart';
import 'endpoints.dart';

class AuthService {
  final Dio _dio;

  AuthService(this._dio);

  final noAuthOptions = Options(extra: {'noAuth': true});

  Future<AuthResponseDto> login(LoginDto loginDto) async {
    final response = await _dio.post(
        AuthApi.login,
        data: loginDto.toJson(),
        options: noAuthOptions
    );
    return AuthResponseDto.fromJson(response.data);
  }

  Future<AuthResponseDto> register(SignupDto signupDto) async {
    final response = await _dio.post(
        AuthApi.register,
        data: signupDto.toJson(),
        options: noAuthOptions
    );
    return AuthResponseDto.fromJson(response.data);
  }

  Future<void> logout() => _dio.post(AuthApi.logout);
}