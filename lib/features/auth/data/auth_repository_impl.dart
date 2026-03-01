import 'dart:async';
import 'package:taskflow/core/constants/store_keys.dart';
import 'package:taskflow/core/error/error.dart';
import 'package:taskflow/core/network/response.dart';
import 'package:taskflow/core/network/safe_caller.dart';
import 'package:taskflow/core/secure_storage/secure_storage.dart';
import 'package:taskflow/shared/data/local/user_storage.dart';
import '../domain/models/login_info.dart';
import '../domain/models/signup_info.dart';
import '../domain/repository/auth_repository.dart';
import 'auth_data_mapper.dart';
import 'network/auth_service.dart';

class AuthRepositoryImpl extends AuthRepository {

  final AuthService _authService;
  final SecureStorage _secureStorage;
  final UserStorage _userStorage;

  AuthRepositoryImpl({
    required AuthService authService,
    required SecureStorage secureStorage,
    required UserStorage userStorage,
  }) : _authService = authService,
        _secureStorage = secureStorage,
        _userStorage = userStorage;

  @override
  Future<Response<void, NetworkError>> login(LoginInfo loginInfo) async{
    final response = await safeCall(()=>
      _authService.login(loginInfo.toDto())
    );
    return response.onSuccess((data){
      final user = data.user.toDomain();
      _userStorage.save(user);
      _secureStorage.write(StoreKeys.accessToken, data.token);
    });
  }

  @override
  Future<Response<void, NetworkError>> register(SignupInfo signupInfo) async{
    final response = await safeCall(() =>
      _authService.register(signupInfo.toDto())
    );
    return response.onSuccess((data){
      final user = data.user.toDomain();
      _userStorage.save(user);
      _secureStorage.write(StoreKeys.accessToken, data.token);
    });
  }

  @override
  Future<void> logout() async{
    _userStorage.clear();
    await _secureStorage.delete(StoreKeys.accessToken);
    unawaited(safeCall(_authService.logout));
  }
}