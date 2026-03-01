import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:taskflow/features/tasks/domain/models/task.dart';

part 'suggested_task.freezed.dart';

@freezed
abstract class SuggestedTask with _$SuggestedTask {
  const factory SuggestedTask({
    required String title,
    String? description,
    @Default(true) bool isSelected,
    required TaskPriority priority,
    required DateTime dueAt,
  }) = _SuggestedTask;
}