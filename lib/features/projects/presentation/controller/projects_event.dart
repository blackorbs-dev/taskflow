import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/project.dart';

part 'projects_event.freezed.dart';

@freezed
sealed class ProjectsEvent with _$ProjectsEvent {
  const factory ProjectsEvent.newProject() = NewProject;
  const factory ProjectsEvent.editProject(Project project) = EditProject;
  const factory ProjectsEvent.nameChanged(String name) = NameChanged;
  const factory ProjectsEvent.descriptionChanged(String description) = DescriptionChanged;
  const factory ProjectsEvent.colorChanged(int color) = ColorChanged;
  const factory ProjectsEvent.iconChanged(String icon) = IconChanged;
  const factory ProjectsEvent.saveProject() = SaveProject;
  const factory ProjectsEvent.deleteProject(int id) = DeleteProject;
}