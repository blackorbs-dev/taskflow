import 'package:drift/drift.dart';
import 'package:taskflow/features/tasks/data/local/task_entity.dart';
import 'package:taskflow/shared/data/local/database/app_database.dart';
import '../../domain/project.dart';
import 'project_entity.dart';

part 'project_dao.g.dart';

@DriftAccessor(tables: [ProjectEntities, TaskEntities])
class ProjectDao extends DatabaseAccessor<AppDatabase> with _$ProjectDaoMixin {
  ProjectDao(super.db);

  Stream<List<Project>> watchProjects() {
    return _projectsWithCountsQuery((query, projectsTable) {
      query.where(projectsTable.isDeleted.not());
      query.orderBy([OrderingTerm.desc(projectsTable.updatedAt)]);
    }).watch();
  }

  Stream<Project> watchProjectById(int projectId) {
    return _projectsWithCountsQuery((query, projectsTable) {
      query.where(projectsTable.isDeleted.not() & projectsTable.id.equals(projectId));
      query.limit(1);
    }).watchSingle();
  }

  Stream<int> watchTotalCount() {
    return projectEntities.count(
      where: (t) => t.isDeleted.not(),
    ).watchSingle();
  }

  Future<ProjectEntity> upsert(ProjectEntitiesCompanion row) =>
      into(projectEntities).insertReturning(
          row,
          mode: InsertMode.insertOrReplace,
          onConflict: DoUpdate((_) => row)
      );

  Future<void> markDeleted(int id) =>
      (update(projectEntities)
        ..where((t) => t.id.equals(id)))
          .write(
          ProjectEntitiesCompanion(
            isDeleted: Value(true),
          )
      );

  Future<void> markDirty(int id) =>
      (update(projectEntities)
        ..where((t) => t.id.equals(id)))
      .write(
        ProjectEntitiesCompanion(
          isDirty: Value(true),
        )
      );

  Future<List<ProjectEntity>> getDirty() {
    return (select(projectEntities)
      ..where((t) => t.isDirty))
        .get();
  }

  Selectable<Project> _projectsWithCountsQuery(
      void Function(JoinedSelectStatement<HasResultSet, dynamic>, $ProjectEntitiesTable) updateQuery
     ){
    final projectsTable = projectEntities;
    final tasksTable = taskEntities;

    final query = select(projectsTable).join([
      leftOuterJoin(
        tasksTable,
        tasksTable.projectId.equalsExp(projectsTable.id) & tasksTable.isDeleted.not(),
      ),
    ]);
    updateQuery(query, projectsTable);

    final totalCount = tasksTable.id.count();
    final completedCount = CaseWhenExpression<int>(
      cases: [CaseWhen(tasksTable.isCompleted, then: const Constant(1))],
      orElse: const Constant(0),
    ).sum();

    query..addColumns([totalCount, completedCount])
      ..groupBy([projectsTable.id]);

    return query.map((row) {
      final project = row.readTable(projectsTable);
      final total = row.read(totalCount) ?? 0;
      final completed = row.read(completedCount) ?? 0;

      return Project(
        id: project.id,
        name: project.name,
        color: project.color,
        icon: project.icon,
        description: project.description,
        totalTaskCount: total,
        completedTaskCount: completed,
      );
    });
  }
}