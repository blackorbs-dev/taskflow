import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../config/app_config.dart';
import '../secure_storage/secure_storage_impl.dart';
import 'auth_interceptor.dart';

final dioProvider = Provider<Dio>((ref) => DioFactory.create(ref));

abstract class DioFactory {
  static Dio create(Ref ref){
    final secureStorage = ref.read(secureStorageProvider);

    final dio = Dio(
      BaseOptions(
        baseUrl: AppConfig.env.baseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        receiveDataWhenStatusError: true,
        responseType: ResponseType.json,
      ),
    );

    dio.interceptors.addAll([
      AuthInterceptor(secureStorage),
      LogInterceptor(
        requestBody: true,
        responseBody: kDebugMode,
        logPrint: (o) => log(o.toString()),
      ),
    ]);

    // Optional: dispose hook (not strictly needed, but nice)
    ref.onDispose(() {
      dio.close(force: true);
    });

    return dio;
  }
}
