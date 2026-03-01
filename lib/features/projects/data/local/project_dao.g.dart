// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_dao.dart';

// ignore_for_file: type=lint
mixin _$ProjectDaoMixin on DatabaseAccessor<AppDatabase> {
  $ProjectEntitiesTable get projectEntities => attachedDatabase.projectEntities;
  $TaskEntitiesTable get taskEntities => attachedDatabase.taskEntities;
  ProjectDaoManager get managers => ProjectDaoManager(this);
}

class ProjectDaoManager {
  final _$ProjectDaoMixin _db;
  ProjectDaoManager(this._db);
  $$ProjectEntitiesTableTableManager get projectEntities =>
      $$ProjectEntitiesTableTableManager(
        _db.attachedDatabase,
        _db.projectEntities,
      );
  $$TaskEntitiesTableTableManager get taskEntities =>
      $$TaskEntitiesTableTableManager(_db.attachedDatabase, _db.taskEntities);
}
