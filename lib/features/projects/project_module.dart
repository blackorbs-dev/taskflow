import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/network/dio_provider.dart';
import '../../shared/shared_module.dart';
import 'data/local/project_dao.dart';
import 'data/project_repository_impl.dart';
import 'data/remote/project_service.dart';
import 'domain/project_repository.dart';

final projectRepositoryProvider = Provider<ProjectRepository>((ref) =>
    ProjectRepositoryImpl(
        projectDao: ref.read(projectDaoProvider),
        projectService: ref.read(projectServiceProvider)
    )
);

final projectDaoProvider = Provider((ref) =>
    ProjectDao(ref.read(appDatabaseProvider))
);

final projectServiceProvider = Provider((ref) =>
    ProjectService(ref.read(dioProvider))
);