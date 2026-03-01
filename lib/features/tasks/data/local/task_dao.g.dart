// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_dao.dart';

// ignore_for_file: type=lint
mixin _$TaskDaoMixin on DatabaseAccessor<AppDatabase> {
  $ProjectEntitiesTable get projectEntities => attachedDatabase.projectEntities;
  $TaskEntitiesTable get taskEntities => attachedDatabase.taskEntities;
  TaskDaoManager get managers => TaskDaoManager(this);
}

class TaskDaoManager {
  final _$TaskDaoMixin _db;
  TaskDaoManager(this._db);
  $$ProjectEntitiesTableTableManager get projectEntities =>
      $$ProjectEntitiesTableTableManager(
        _db.attachedDatabase,
        _db.projectEntities,
      );
  $$TaskEntitiesTableTableManager get taskEntities =>
      $$TaskEntitiesTableTableManager(_db.attachedDatabase, _db.taskEntities);
}
