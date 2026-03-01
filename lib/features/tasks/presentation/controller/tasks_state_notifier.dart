import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:taskflow/features/projects/project_module.dart';
import '../../../projects/domain/project.dart';
import '../../../projects/domain/project_repository.dart';
import '../../domain/models/task.dart';
import '../../domain/repository/task_repository.dart';
import '../../task_module.dart';
import 'tasks_event.dart';
import 'tasks_state.dart';

part 'tasks_state_notifier.g.dart';

@riverpod
class TasksStateNotifier extends _$TasksStateNotifier {
  late final TaskRepository _repository;
  late final ProjectRepository _projectRepository;

  @override
  TasksState build(int projectId) {
    _repository = ref.read(taskRepositoryProvider);
    _projectRepository = ref.read(projectRepositoryProvider);

    _initObservers();
    return stateOrNull ?? TasksState();
  }

  void handleEvent(TasksEvent event) {
    event.when(
      addNewTask: () => _selectTask(Task()),
      editTask: _selectTask,
      titleChanged: _onTitleChanged,
      descriptionChanged: _onDescriptionChanged,
      priorityChanged: _onPriorityChanged,
      dueDateSelected: _onDueDateSelected,
      projectSelected: _onProjectSelected,
      saveTask: _saveTask,
      toggleCompleted: _toggleCompleted,
      deleteTask: _deleteTask,
    );
  }

  void _selectTask(Task task) {
    state = stateOrNull?.copyWith(selectedTask: task)
        ?? TasksState(selectedTask: task);
  }

  void _onTitleChanged(String title) {
    state = state.copyWith.selectedTask(title: title);
  }

  void _onDescriptionChanged(String description) {
    state = state.copyWith.selectedTask(description: description);
  }

  void _onPriorityChanged(TaskPriority priority) {
    state = state.copyWith.selectedTask(priority: priority);
  }

  void _onDueDateSelected(DateTime dueAt) {
    state = state.copyWith.selectedTask(dueAt: dueAt);
  }

  void _onProjectSelected(Project project) {
    state = state.copyWith(
      selectedProject: project,
      selectedTask: state.selectedTask.copyWith(projectId: project.id),
    );
  }

  Future<void> _saveTask() => _repository.upsert(
      state.selectedTask, projectId
  );

  Future<void> _toggleCompleted(Task task) => _repository.toggleComplete(task);

  Future<void> _deleteTask(int taskId) => _repository.delete(taskId);

  void _initObservers(){
    final projectSub = _projectRepository.watchProjectById(projectId).listen((project) {
      state = stateOrNull?.copyWith(project: project, selectedProject: project)
           ?? TasksState(project: project, selectedProject: project);
    });
    ref.onDispose(projectSub.cancel);

    final pendingTasksSub = _repository.watchByProject(
        projectId, isCompleted: false
    ).listen((tasks) {
      state = stateOrNull?.copyWith(pendingTasks: tasks)
          ?? TasksState(pendingTasks: tasks);
    });
    ref.onDispose(pendingTasksSub.cancel);

    final completedTasksSub = _repository.watchByProject(
        projectId, isCompleted: true
    ).listen((tasks) {
      state = stateOrNull?.copyWith(completedTasks: tasks)
          ?? TasksState(completedTasks: tasks);
    });
    ref.onDispose(completedTasksSub.cancel);

    final projectsSub = _projectRepository.watchProjects().listen((projects) {
      state = stateOrNull?.copyWith(projects: projects)
          ?? TasksState(projects: projects);
    });
    ref.onDispose(projectsSub.cancel);
  }
}