import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../projects/domain/project.dart';
import '../../domain/models/task.dart';

part 'tasks_event.freezed.dart';

@freezed
sealed class TasksEvent with _$TasksEvent{
  const factory TasksEvent.addNewTask() = AddNewTask;
  const factory TasksEvent.editTask(Task task) = EditTask;
  const factory TasksEvent.titleChanged(String title) = TitleChanged;
  const factory TasksEvent.descriptionChanged(String description) = DescriptionChanged;
  const factory TasksEvent.priorityChanged(TaskPriority priority) = PriorityChanged;
  const factory TasksEvent.dueDateSelected(DateTime dueAt) = DueDateSelected;
  const factory TasksEvent.projectSelected(Project project) = ProjectSelected;
  const factory TasksEvent.saveTask() = SaveTask;
  const factory TasksEvent.toggleCompleted(Task task) = ToggleCompleted;
  const factory TasksEvent.deleteTask(int taskId) = DeleteTask;
}