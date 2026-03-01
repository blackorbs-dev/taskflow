import 'project.dart';

abstract class ProjectRepository {
  Stream<List<Project>> watchProjects();
  Stream<Project?> watchProjectById(int id);
  Stream<int> watchTotalCount();
  Future<void> upsert(Project project);
  Future<void> delete(int projectId);
}