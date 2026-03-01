import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:taskflow/core/error/error.dart';
import 'package:taskflow/core/network/response.dart';
import 'package:taskflow/features/tasks/domain/repository/task_repository.dart';
import 'package:taskflow/features/tasks/task_module.dart';
import '../../../tasks/domain/models/task.dart';
import '../../ai_module.dart';
import '../../domain/models/reschedule_info.dart';

part 'reschedule_task_notifier.g.dart';

@riverpod
class RescheduleTaskNotifier  extends _$RescheduleTaskNotifier{

  late TaskRepository _taskRepository;

  @override
  Future<RescheduleInfo> build(Task task) async {
    _taskRepository = ref.read(taskRepositoryProvider);
    final aiRepository = ref.read(aiRepositoryProvider);

    final response = await aiRepository.rescheduleTask(task);
    return response.map(
        success: (successResponse) => successResponse.data,
        error: (errorResponse) => throw errorResponse.error,
        cancelled: (_) => throw NetworkError.unknown()
    );
  }

  Future<void> updateTask() async{
    await _taskRepository.upsert(
        task.copyWith(
          dueAt: state.value?.dueAt ?? task.dueAt
        ),
        task.projectId
    );
  }
}