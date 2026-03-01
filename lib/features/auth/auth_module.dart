import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/network/dio_provider.dart';
import '../../core/secure_storage/secure_storage_impl.dart';
import '../../shared/shared_module.dart';
import 'data/auth_repository_impl.dart';
import 'data/network/auth_service.dart';

final authRepositoryProvider = Provider((ref) =>
    AuthRepositoryImpl(
        authService: ref.read(authServiceProvider),
        secureStorage: ref.read(secureStorageProvider),
        userStorage: ref.read(userStorageProvider)
    )
);

final authServiceProvider = Provider((ref) =>
    AuthService(ref.read(dioProvider))
);