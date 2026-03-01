import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:taskflow/shared/shared_module.dart';
import '../../../projects/domain/project_repository.dart';
import '../../../projects/project_module.dart';
import '../../../tasks/domain/models/task_summary.dart';
import '../../../tasks/domain/repository/task_repository.dart';
import '../../../tasks/task_module.dart';
import 'home_state.dart';

part 'home_state_notifier.g.dart';

@riverpod
class HomeStateNotifier extends _$HomeStateNotifier {

  late final TaskRepository _taskRepository;
  late final ProjectRepository _projectRepository;

  @override
  HomeState build() {
    final userRepository = ref.read(userRepositoryProvider);
    _taskRepository = ref.read(taskRepositoryProvider);
    _projectRepository = ref.read(projectRepositoryProvider);

    _initObservers();

    final user = userRepository.getUser();
    return HomeState(userName: user?.name ?? '');
  }

  void _initObservers(){
    final overdueTaskSub = _taskRepository.watchOverdue().listen((overdueTasks) {
      state = state.copyWith(overdueTasks: overdueTasks);
    });
    ref.onDispose(overdueTaskSub.cancel);

    final taskSummarySub = _taskRepository.watchTotalCount().zipWith(
      _taskRepository.watchCompletedCount(),
      (totalCount, completedCount) => TaskSummary(
        totalCount: totalCount,
        completedCount: completedCount,
      )
    ).listen((taskSummary) {
      state = state.copyWith(taskSummary: taskSummary);
    });
    ref.onDispose(taskSummarySub.cancel);

    final projectsSub = _projectRepository.watchProjects().listen((projects) {
      state = state.copyWith(
          projects: projects.take(10).toList()
      );
    });
    ref.onDispose(projectsSub.cancel);
  }
}