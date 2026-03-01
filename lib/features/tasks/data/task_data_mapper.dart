import 'package:drift/drift.dart';
import '../../../shared/data/local/database/app_database.dart';
import '../domain/models/task.dart';
import 'remote/task_dto.dart';

extension Mappers on TaskEntity{
  Task toDomain() => Task(
      id: id,
      projectId: projectId,
      title: title,
      description: description,
      isCompleted: isCompleted,
      priority: priority,
      dueAt: dueAt,
      isDirty: isDirty,
      isDeleted: isDeleted,
      createdAt: createdAt,
      updatedAt: updatedAt
  );

  TaskDto toDto() => TaskDto(
      id: id,
      title: title,
      description: description,
      isCompleted: isCompleted,
      priority: priority,
      dueAt: dueAt,
      createdAt: createdAt,
      updatedAt: updatedAt
  );
}

extension EntityMapper on Task{
  TaskEntitiesCompanion toCompanion(int projectId) => TaskEntitiesCompanion.insert(
      id: isNew ? Value.absent() : Value(id),
      projectId: projectId,
      title: title,
      description: Value(description),
      isCompleted: Value(isCompleted),
      priority: priority,
      dueAt: dueAt ?? DateTime.now(),
      isDirty: Value(isDirty),
      isDeleted: Value(isDeleted),
      createdAt: createdAt ?? DateTime.now(),
      updatedAt: DateTime.now()
  );

  TaskDto toDto({
    int? id,
    String? title,
    String? description,
    bool? isCompleted,
    TaskPriority? priority,
    DateTime? dueAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) => TaskDto(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      isCompleted: isCompleted ?? this.isCompleted,
      priority: priority ?? this.priority,
      dueAt: dueAt ?? this.dueAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
  );
}

extension DomainMapper on TaskDto {
  Task toDomain() => Task(
      id: id,
      title: title,
      description: description,
      isCompleted: isCompleted,
      priority: priority,
      dueAt: dueAt,
      createdAt: createdAt,
      updatedAt: updatedAt
  );
}