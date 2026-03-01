import 'package:dio/dio.dart';
import 'endpoints.dart';
import 'project_dto.dart';

class ProjectService {
  final Dio _dio;

  ProjectService(this._dio);

  Future<List<ProjectDto>> fetchProjects() async {
    final response = await _dio.get(ProjectApi.projects);
    return List<ProjectDto>.from(
        response.data.map((e) => ProjectDto.fromJson(e))
    );
  }

  Future<ProjectDto> createProject(ProjectDto project) async {
    final response = await _dio.post(ProjectApi.projects, data: project.toJson());
    return ProjectDto.fromJson(response.data);
  }

  Future<ProjectDto> updateProject(ProjectDto project) async {
    final response = await _dio.put(
        ProjectApi.project(project.id),
        data: project.toJson()
    );
    return ProjectDto.fromJson(response.data);
  }

  Future<void> deleteProject(int id) async {
    await _dio.delete(ProjectApi.project(id));
  }
}