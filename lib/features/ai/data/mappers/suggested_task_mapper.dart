import 'package:taskflow/features/tasks/domain/models/task.dart';
import '../../domain/models/suggested_task.dart';
import '../dto/suggested_task_dto.dart';

extension SuggestedTaskMapper on SuggestedTaskDto {
  SuggestedTask toDomain() => SuggestedTask(
    title: title,
    description: description,
    priority: priority,
    dueAt: dueAt,
  );
}

extension TaskMapper on SuggestedTask{
  Task toTask() => Task(
    title: title,
    description: description,
    priority: priority,
    dueAt: dueAt,
  );
}