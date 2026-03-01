import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:taskflow/features/projects/domain/project.dart';

part 'ai_event.freezed.dart';

@freezed
sealed class AIEvent with _$AIEvent {
  const factory AIEvent.generateTasks() = GenerateTasks;
  const factory AIEvent.promptChanged(String prompt) = PromptChanged;
  const factory AIEvent.taskSelected(int index) = TaskSelected;
  const factory AIEvent.projectSelected(Project project) = ProjectSelected;
  const factory AIEvent.importTasks() = ImportTasks;
  const factory AIEvent.alertShown() = AlertShown;
  const factory AIEvent.resetTaskGeneratedFlag() = ResetTaskGeneratedFlag;
}