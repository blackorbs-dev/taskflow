import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rxdart/rxdart.dart';
import '../../../../shared/domain/user.dart';
import '../../../../shared/shared_module.dart';
import '../../../auth/auth_module.dart';
import '../../../auth/domain/repository/auth_repository.dart';
import '../../../projects/domain/project_repository.dart';
import '../../../projects/project_module.dart';
import '../../../tasks/domain/models/task_summary.dart';
import '../../../tasks/domain/repository/task_repository.dart';
import '../../../tasks/task_module.dart';
import 'profile_state.dart';

part 'profile_state_notifier.g.dart';

@riverpod
class ProfileStateNotifier extends _$ProfileStateNotifier{

  late final ProjectRepository _projectRepository;
  late final TaskRepository _taskRepository;
  late final AuthRepository _authRepository;

  @override
  ProfileState build() {
    final userRepository = ref.read(userRepositoryProvider);
    _projectRepository = ref.read(projectRepositoryProvider);
    _taskRepository = ref.read(taskRepositoryProvider);
    _authRepository = ref.read(authRepositoryProvider);

    _initObservers();

    final user = userRepository.getUser();
    return ProfileState(user: user ?? User());
  }

  Future<void> signOut() async {
    await _authRepository.logout();
    state = state.copyWith(isSignedOut: true);
  }

  void _initObservers(){
    final projectsSub = _projectRepository.watchTotalCount().listen((count) {
      state = state.copyWith(totalProjectCount: count);
    });
    ref.onDispose(projectsSub.cancel);

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
  }
}