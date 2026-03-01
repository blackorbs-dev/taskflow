import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/project.dart';

part 'projects_state.freezed.dart';

@freezed
abstract class ProjectsState with _$ProjectsState {

  const factory ProjectsState({
    @Default(Project()) Project selectedProject,
    @Default([]) List<Project> projects
  }) = _ProjectsState;

}