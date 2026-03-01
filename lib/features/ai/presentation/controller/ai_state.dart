import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:taskflow/features/projects/domain/project.dart';
import 'package:taskflow/shared/domain/alert_info.dart';
import '../../domain/models/suggested_task.dart';

part 'ai_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
abstract class AIState with _$AIState {
  const factory AIState({
    @Default('') String prompt,
    @Default(false) bool isLoading,
    @Default(false) bool taskGenerated,
    AlertInfo? alertInfo,
    @Default([]) List<SuggestedTask> suggestedTasks,
    @Default(0) int selectedTasksCount,
    @Default([]) List<Project> projects,
    Project? selectedProject
  }) = _AIState;
}
