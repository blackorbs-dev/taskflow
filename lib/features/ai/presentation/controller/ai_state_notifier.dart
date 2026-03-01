import 'dart:async';
import 'package:easy_localization/easy_localization.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:taskflow/core/error/extensions.dart';
import 'package:taskflow/core/network/response.dart';
import 'package:taskflow/features/projects/domain/project.dart';
import 'package:taskflow/features/projects/domain/project_repository.dart';
import 'package:taskflow/features/projects/project_module.dart';
import 'package:taskflow/features/tasks/domain/repository/task_repository.dart';
import 'package:taskflow/features/tasks/task_module.dart';
import 'package:taskflow/shared/domain/alert_info.dart';
import 'package:taskflow/translations/locale_keys.g.dart';
import '../../data/mappers/suggested_task_mapper.dart';
import '../../domain/ai_repository.dart';
import '../../ai_module.dart';
import 'ai_event.dart';
import 'ai_state.dart';

part 'ai_state_notifier.g.dart';

@riverpod
class AiStateNotifier extends _$AiStateNotifier {

  late final AIRepository _aiRepository;
  late final TaskRepository _tasksRepository;
  late final ProjectRepository _projectRepository;

  @override
  AIState build() {
    _aiRepository = ref.read(aiRepositoryProvider);
    _tasksRepository = ref.read(taskRepositoryProvider);
    _projectRepository = ref.read(projectRepositoryProvider);
    unawaited(_init());
    return AIState();
  }
  
  Future<void> _init() async {
    final projects = await _projectRepository.watchProjects().first;
    state = state.copyWith(projects: projects);
  }

  void handleEvent(AIEvent event) {
    event.when(
        generateTasks: _generateTasks,
        promptChanged: _promptChanged,
        projectSelected: _projectSelected,
        taskSelected: _taskSelected,
        importTasks: _importTasks,
        alertShown: _alertShown,
        resetTaskGeneratedFlag: _resetTaskGeneratedFlag
    );
  }

  Future<void> _generateTasks() async {
    state = state.copyWith(isLoading: true);
    final response = await _aiRepository.generateTasks(state.prompt);
    response.whenOrNull(
        success: (tasks) {
          var newState = state.copyWith(
            isLoading: false,
            alertInfo: tasks.isEmpty ? AlertInfo(
                message: tr(LocaleKeys.no_task_generated_info),
                type: AlertType.info
            ) : null,
          );
          if(tasks.isNotEmpty){
            newState = newState.copyWith(
                suggestedTasks: tasks,
                selectedTasksCount: tasks.length,
                taskGenerated: true
            );
          }
          state = newState;
        },
        error: (error) {
          state = state.copyWith(
              isLoading: false,
              alertInfo: AlertInfo(message: error.message)
          );
        }
    );
  }

  void _promptChanged(String prompt) {
    state = state.copyWith(prompt: prompt);
  }

  void _projectSelected(Project project) {
    state = state.copyWith(selectedProject: project);
  }

  void _taskSelected(int index) {
    var task = state.suggestedTasks[index];
    task = task.copyWith(isSelected: !task.isSelected);
    state = state.copyWith(
        suggestedTasks: state.suggestedTasks
          ..removeAt(index)..insert(index, task),
        selectedTasksCount: state.selectedTasksCount + (task.isSelected ? 1 : -1)
    );
  }

  Future<void> _importTasks() async{
    final projectId = state.selectedProject?.id;
    if(projectId == null) {
      state = state.copyWith(
          alertInfo: AlertInfo(
              message: tr(LocaleKeys.select_project)
          )
      );
      return;
    }
    await _tasksRepository.upsertAll(
        state.suggestedTasks
            .where((t) => t.isSelected)
            .map((e) => e.toTask()).toList(),
        projectId
    );
    state = state.copyWith(
        suggestedTasks: state.suggestedTasks
            .where((t) => !t.isSelected).toList(),
        selectedTasksCount: 0,
    );
  }

  void _alertShown() {
    state = state.copyWith(alertInfo: null);
  }

  void _resetTaskGeneratedFlag() {
    state = state.copyWith(taskGenerated: false);
  }
}
