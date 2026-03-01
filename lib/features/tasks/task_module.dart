import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/network/dio_provider.dart';
import '../../shared/shared_module.dart';
import 'data/local/task_dao.dart';
import 'data/remote/task_service.dart';
import 'data/task_repository_impl.dart';
import 'domain/repository/task_repository.dart';

final taskRepositoryProvider = Provider<TaskRepository>((ref) =>
    TaskRepositoryImpl(
        taskDao: ref.read(taskDaoProvider),
        taskService: ref.read(taskServiceProvider)
    )
);

final taskDaoProvider = Provider((ref) =>
    TaskDao(ref.read(appDatabaseProvider))
);

final taskServiceProvider = Provider((ref) =>
    TaskService(ref.read(dioProvider))
);