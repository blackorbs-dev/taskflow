import 'package:drift/drift.dart' show Value;
import 'package:taskflow/shared/data/local/database/app_database.dart';
import '../domain/project.dart';
import 'remote/project_dto.dart';

extension ProjectMapper on Project {

  ProjectEntitiesCompanion toCompanion() => ProjectEntitiesCompanion(
    id: isNew ? Value.absent() : Value(id),
    name: Value(name),
    color: Value(color),
    icon: Value(icon),
    description: Value(description),
    createdAt: Value(createdAt ?? DateTime.now()),
    updatedAt: Value(DateTime.now()),
  );

}

extension ProjectDtoMapper on ProjectEntity {
  ProjectDto toDto() => ProjectDto(
    id: id,
    name: name,
    color: color,
    icon: icon,
    description: description,
    createdAt: createdAt,
    updatedAt: updatedAt,
  );
}