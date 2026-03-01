import 'package:dio/dio.dart';
import 'endpoints.dart';
import 'task_dto.dart';

class TaskService {
  final Dio _dio;

  TaskService(this._dio);

  Future<List<TaskDto>> fetchTasks() async {
    final response = await _dio.get(TaskApi.tasks);
    return List<TaskDto>.from(response.data.map((e) => TaskDto.fromJson(e)));
  }

  Future<TaskDto> createTask(TaskDto task) async {
    final response = await _dio.post(TaskApi.tasks, data: task.toJson());
    return TaskDto.fromJson(response.data);
  }

  Future<List<TaskDto>> updateTasks(List<TaskDto> tasks) async {
    final response = await _dio.put(
        TaskApi.tasks,
        data: tasks.map((e) => e.toJson()).toList()
    );
    return List<TaskDto>.from(response.data.map((e) => TaskDto.fromJson(e)));
  }

  Future<TaskDto> updateTask(TaskDto task) async {
    final response = await _dio.put(TaskApi.task(task.id), data: task.toJson());
    return TaskDto.fromJson(response.data);
  }

  Future<void> deleteTask(int id) async {
    await _dio.delete(TaskApi.task(id));
  }

}