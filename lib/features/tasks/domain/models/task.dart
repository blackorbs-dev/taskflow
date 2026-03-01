import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';

enum TaskPriority { low, medium, high }

enum DueStatus { overdue, dueToday, dueTomorrow }

@freezed
abstract class Task with _$Task {
  const Task._();

  const factory Task({
    @Default(-1) int id,
    @Default(-1) int projectId,
    @Default('') String title,
    String? description,
    @Default(false) bool isCompleted,
    @Default(TaskPriority.medium) TaskPriority priority,
    DateTime? dueAt,

    /// Sync fields
    @Default(false) bool isDirty,   // local changed, needs sync
    @Default(false) bool isDeleted, // soft-delete for sync

    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Task;

  bool get isNew => id == -1;
}

extension TaskDueStatus on Task {
  DueStatus? get dueStatus {
    if (dueAt == null || isCompleted) return null;

    final now = DateTime.now();
    final difference = DateTime(
      dueAt!.year,
      dueAt!.month,
      dueAt!.day,
    ).difference(DateTime(now.year, now.month, now.day)).inDays;

    if (difference < 0) return DueStatus.overdue;
    if (difference == 0) return DueStatus.dueToday;
    if (difference == 1) return DueStatus.dueTomorrow;

    return null;
  }
}
