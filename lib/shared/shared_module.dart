import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taskflow/shared/data/local/database/db_factory.dart';
import 'data/local/user_storage.dart';
import 'data/user_repository_impl.dart';
import 'domain/user_repository.dart';
import 'services/notification_service.dart';

final userRepositoryProvider = Provider<UserRepository>((ref) =>
    UserRepositoryImpl(ref.read(userStorageProvider))
);

final userStorageProvider = Provider((_) => UserStorage());

final appDatabaseProvider = Provider((_) => createDatabase());

final notificationServiceProvider = Provider((_) => NotificationService());