import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../projects/domain/project.dart';
import '../../domain/models/task.dart';

part 'tasks_state.freezed.dart';

@freezed
abstract class TasksState with _$TasksState {
  const factory TasksState({
    @Default(Task()) Task selectedTask,
    @Default([]) List<Task> pendingTasks,
    @Default([]) List<Task> completedTasks,
    Project? project,
    Project? selectedProject,
    @Default([]) List<Project> projects,
  }) = _TasksState;
}