import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/project.dart';
import '../../domain/project_repository.dart';
import '../../project_module.dart';
import 'projects_state.dart';
import 'projects_event.dart';

part 'projects_state_notifier.g.dart';

@Riverpod(keepAlive: true)
class ProjectsStateNotifier extends _$ProjectsStateNotifier {

  late final ProjectRepository _repository;

  @override
  ProjectsState build() {
    _repository = ref.read(projectRepositoryProvider);
    _initObservers();
    return stateOrNull ?? ProjectsState();
  }

  void handleEvent(ProjectsEvent event){
    event.when(
      newProject: () => _selectProject(Project()),
      editProject: _selectProject,
      nameChanged: _onNameChanged,
      descriptionChanged: _onDescriptionChanged,
      colorChanged: _onColorChanged,
      iconChanged: _onIconChanged,
      saveProject: _saveProject,
      deleteProject: _deleteProject,
    );
  }

  void _initObservers() {
    final projectsSub = _repository.watchProjects().listen((projects) {
      state = stateOrNull?.copyWith(projects: projects) ?? ProjectsState(projects: projects);
    });
    ref.onDispose(projectsSub.cancel);
  }

  void _selectProject(Project project){
    state = state.copyWith(selectedProject: project);
  }

  void _onNameChanged(String name){
    state = state.copyWith.selectedProject(name: name);
  }

  void _onDescriptionChanged(String description){
    state = state.copyWith.selectedProject(description: description);
  }

  void _onColorChanged(int color){
    state = state.copyWith.selectedProject(color: color);
  }

  void _onIconChanged(String icon){
    state = state.copyWith.selectedProject(icon: icon);
  }

  Future<void> _saveProject() => _repository.upsert(state.selectedProject);

  Future<void> _deleteProject(int id) => _repository.delete(id);
}