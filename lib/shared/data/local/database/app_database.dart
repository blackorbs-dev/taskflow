import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import '../../../../features/projects/data/local/project_dao.dart';
import '../../../../features/projects/data/local/project_entity.dart';
import '../../../../features/tasks/data/local/task_dao.dart';
import '../../../../features/tasks/data/local/task_entity.dart';
import '../../../../features/tasks/domain/models/task.dart';

part 'app_database.g.dart';

@DriftDatabase(
  tables: [ProjectEntities, TaskEntities],
  daos: [ProjectDao, TaskDao],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? executor]) : super(executor ?? _openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      beforeOpen: (details) async {
        await customStatement('PRAGMA foreign_keys = ON');
      }
    );
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File(p.join(dir.path, 'task_manager.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}

AppDatabase createDatabase() {
  return AppDatabase();
}