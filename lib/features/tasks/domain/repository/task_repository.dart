import '../models/task.dart';

abstract class TaskRepository {
  Stream<List<Task>> watchByProject(int projectId, {required bool isCompleted});
  Stream<List<Task>> watchOverdue();
  Stream<int> watchTotalCount();
  Stream<int> watchCompletedCount();

  Future<void> upsert(Task task, int projectId);
  Future<void> upsertAll(List<Task> tasks, int projectId);
  Future<void> delete(int taskId);
  Future<void> toggleComplete(Task task);

  /// Sync local dirty records with remote mock
  Future<void> syncPending();
}