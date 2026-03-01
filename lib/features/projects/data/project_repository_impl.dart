import 'package:taskflow/core/network/response.dart';
import 'package:taskflow/core/network/safe_caller.dart';
import '../domain/project.dart';
import '../domain/project_repository.dart';
import 'local/project_dao.dart';
import 'project_mapper.dart';
import 'remote/project_service.dart';

class ProjectRepositoryImpl extends ProjectRepository {
  final ProjectDao _projectDao;
  final ProjectService _projectService;

  ProjectRepositoryImpl({
    required ProjectDao projectDao,
    required ProjectService projectService,
  }) : _projectDao = projectDao,
      _projectService = projectService;


  @override
  Stream<List<Project>> watchProjects() => _projectDao.watchProjects();

  @override
  Stream<Project?> watchProjectById(int id) => _projectDao.watchProjectById(id);

  @override
  Stream<int> watchTotalCount() => _projectDao.watchTotalCount();

  @override
  Future<void> upsert(Project project) async {
    final entity = await _projectDao.upsert(project.toCompanion());
    final response = await safeCall(() =>
        _projectService.updateProject(entity.toDto())
    );
    response.onError((_) {
      _projectDao.markDirty(entity.id);
    });
  }

  @override
  Future<void> delete(int projectId) async {
    await _projectDao.markDeleted(projectId);
    final response = await safeCall(() =>
        _projectService.deleteProject(projectId)
    );
    response.onError((_) {
      _projectDao.markDirty(projectId);
    });
  }

}