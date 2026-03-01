import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:taskflow/features/projects/domain/project.dart';
import 'package:taskflow/features/tasks/domain/models/task.dart';
import 'package:taskflow/features/tasks/domain/models/task_summary.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    required String userName,
    @Default(TaskSummary()) TaskSummary taskSummary,
    @Default(<Task>[]) List<Task> overdueTasks,
    @Default(<Project>[]) List<Project> projects,
  }) = _HomeState;
}
