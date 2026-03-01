import 'dart:async';
import 'package:taskflow/core/network/response.dart';
import 'package:taskflow/core/network/safe_caller.dart';
import 'package:taskflow/shared/data/local/database/app_database.dart';
import '../domain/models/task.dart';
import '../domain/repository/task_repository.dart';
import 'local/task_dao.dart';
import 'remote/task_service.dart';
import 'task_data_mapper.dart';

class TaskRepositoryImpl extends TaskRepository {
  final TaskDao _taskDao;
  final TaskService _taskService;

  TaskRepositoryImpl({
    required TaskDao taskDao,
    required TaskService taskService,
  }) : _taskDao = taskDao,
        _taskService = taskService;

  @override
  Stream<List<Task>> watchByProject(int projectId, {required bool isCompleted}) {
    return _taskDao.watchByProject(projectId, isCompleted: isCompleted)
        .map((tasks) => tasks.map((task) => task.toDomain()).toList());
  }

  @override
  Stream<List<Task>> watchOverdue() {
    return _taskDao.watchOverdue()
        .map((tasks) => tasks.map((task) => task.toDomain()).toList());
  }

  @override
  Stream<int> watchTotalCount() => _taskDao.watchTotalCount();

  @override
  Stream<int> watchCompletedCount() => _taskDao.watchCompletedCount();


  @override
  Future<void> delete(int taskId) async{
    await _taskDao.markDeleted(taskId);
    unawaited(_safeUpdate(() => _taskService.deleteTask(taskId), taskId));
  }

  @override
  Future<void> toggleComplete(Task task) async{
    await _taskDao.markCompleted(
        task.id,
        isCompleted: !task.isCompleted
    );
    unawaited(_safeUpdate(
        () => _taskService.updateTask(
            task.toDto(isCompleted: !task.isCompleted)
        ),
        task.id
    ));
  }

  @override
  Future<void> upsert(Task task, int projectId) async {
    final taskEntity = await _taskDao.upsert(task.toCompanion(projectId));
    unawaited(_safeUpdate(
            () => task.id == 0 ?
            _taskService.createTask(taskEntity.toDto()) :
            _taskService.updateTask(taskEntity.toDto()),
        taskEntity.id
    ));
  }

  Future<void> _safeUpdate(Future<void> Function() request, int taskId) async{
    final response = await safeCall(request);
    response.onError((_) {
      _taskDao.markDirty(taskId);
    });
  }

  @override
  Future<void> upsertAll(List<Task> tasks, int projectId) async{
    final entities = await _taskDao.upsertAll(
        tasks.map((task) => task.toCompanion(projectId)).toList()
    );
    unawaited(_safeUpdateAll(entities));
  }

  Future<void> _safeUpdateAll(List<TaskEntity> entities) async{
    final response = await safeCall(() => _taskService.updateTasks(
        entities.map((entity) => entity.toDto()).toList()
    ));
    response.onError((_) {
      final ids = entities.map((entity) => entity.id).toList();
      _taskDao.markAllDirty(ids);
    });
  }

  @override
  Future<void> syncPending() {
    // TODO: implement syncPending
    throw UnimplementedError();
  }
}