import 'package:taskflow/core/error/error.dart';
import 'package:taskflow/core/network/response.dart';
import 'package:taskflow/features/tasks/domain/models/task.dart';
import 'models/reschedule_info.dart';
import 'models/suggested_task.dart';

abstract class AIRepository {
  Future<Response<List<SuggestedTask>, NetworkError>> generateTasks(String prompt);
  Future<Response<RescheduleInfo, NetworkError>> rescheduleTask(Task task);
}