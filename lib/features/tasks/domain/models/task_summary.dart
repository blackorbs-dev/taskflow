import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_summary.freezed.dart';

@freezed
abstract class TaskSummary with _$TaskSummary{
  const TaskSummary._();

  const factory TaskSummary({
    @Default(0) int totalCount,
    @Default(0) int completedCount
  }) = _TaskSummary;

  double get percentage => completedCount / totalCount;
  int get pendingCount => totalCount - completedCount;
}