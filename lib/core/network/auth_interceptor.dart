import 'package:dio/dio.dart';
import '../constants/store_keys.dart';
import '../secure_storage/secure_storage.dart';

class AuthInterceptor extends Interceptor {
  AuthInterceptor(this._secureStorage);

  final SecureStorage _secureStorage;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final accessToken = await _secureStorage.read(StoreKeys.accessToken);

    if (accessToken != null && options.extra['noAuth'] != true) {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }

    handler.next(options);
  }
}
