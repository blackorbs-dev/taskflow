import 'package:drift/drift.dart';
import '../../../../shared/data/local/database/app_database.dart';
import 'task_entity.dart';

part 'task_dao.g.dart';

@DriftAccessor(tables: [TaskEntities])
class TaskDao extends DatabaseAccessor<AppDatabase> with _$TaskDaoMixin {
  TaskDao(super.db);

  Stream<List<TaskEntity>> watchByProject(int projectId, {bool isCompleted = false}) {
    return (select(taskEntities)
      ..where((t) => t.projectId.equals(projectId) & t.isCompleted.equals(isCompleted) & t.isDeleted.not())
      ..orderBy([
            (t) => OrderingTerm.desc(t.updatedAt),
      ]))
        .watch();
  }

  Stream<List<TaskEntity>> watchOverdue() {
    final now = DateTime.now();
    return (select(taskEntities)
      ..where((t) => t.isDeleted.not() & t.isCompleted.not() & t.dueAt.isSmallerThanValue(now))
      ..orderBy([
            (t) => OrderingTerm.desc(t.updatedAt),
      ]))
        .watch();
  }

  Stream<int> watchCompletedCount() {
    return taskEntities.count(
      where: (t) => t.isCompleted & t.isDeleted.not()
    ).watchSingle();
  }

  Stream<int> watchTotalCount() {
    return taskEntities.count(
      where: (t) => t.isDeleted.not(),
    ).watchSingle();
  }

  Future<TaskEntity> upsert(TaskEntitiesCompanion row) =>
      into(taskEntities).insertReturning(
          row,
        mode: InsertMode.insertOrReplace,
        onConflict: DoUpdate((_) => row)
      );
  
  Future<List<TaskEntity>> upsertAll(List<TaskEntitiesCompanion> rows) {
    // batch((batch) => batch.insertAllOnConflictUpdate(taskEntities, rows));
    return transaction(() async {
      final entities = <TaskEntity>[];
      for (final row in rows) {
        final entity = await upsert(row);
        entities.add(entity);
      }
      return entities;
    });
  }

  Future<void> markDeleted(int id) =>
      (update(taskEntities)
        ..where((t) => t.id.equals(id)))
          .write(
          TaskEntitiesCompanion(
            isDeleted: Value(true),
          )
      );

  Future<void> markDirty(int id) =>
      (update(taskEntities)
        ..where((t) => t.id.equals(id)))
      .write(
        TaskEntitiesCompanion(
          isDirty: Value(true),
        )
      );

  Future<void> markAllDirty(List<int> ids) {
    return transaction(() async {
      for (final id in ids) {
        await markDirty(id);
      }
    });
  }

  Future<void> markCompleted(int id, {bool isCompleted = true}) =>
      (update(taskEntities)
        ..where((t) => t.id.equals(id)))
      .write(
        TaskEntitiesCompanion(
          isCompleted: Value(isCompleted),
          updatedAt: Value(DateTime.now())
        )
      );

  Future<List<TaskEntity>> getDirty() {
    return (select(taskEntities)
      ..where((t) => t.isDirty))
        .get();
  }
}
