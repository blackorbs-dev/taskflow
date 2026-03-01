import 'package:drift/drift.dart';
import '../../../projects/data/local/project_entity.dart';
import '../../domain/models/task.dart';

@TableIndex(name: 'tasks_indices', columns: {#isDeleted, #isCompleted})
class TaskEntities extends Table {
  late final id = integer().autoIncrement()();
  late final projectId = integer().references(ProjectEntities, #id)();

  late final title = text()();
  late final description = text().nullable()();

  late final isCompleted = boolean().withDefault(const Constant(false))();
  late final priority = textEnum<TaskPriority>()();
  late final dueAt = dateTime()();

  late final isDirty = boolean().withDefault(const Constant(false))();
  late final isDeleted = boolean().withDefault(const Constant(false))();

  late final createdAt = dateTime()();
  late final updatedAt = dateTime()();
}