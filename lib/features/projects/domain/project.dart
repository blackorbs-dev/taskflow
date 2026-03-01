import 'package:freezed_annotation/freezed_annotation.dart';

part 'project.freezed.dart';

@freezed
abstract class Project with _$Project {
  const Project._();

  const factory Project({
    @Default(-1) int id,
    @Default('') String name,
    @Default(0xFFE76E50) int color,
    @Default('📋') String icon,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
    @Default(0) int totalTaskCount,
    @Default(0) int completedTaskCount,
  }) = _Project;

  bool get isNew => id == -1;

  int get pendingTasksCount => totalTaskCount - completedTaskCount;

  double get percentCompleted =>
      totalTaskCount == 0 ? 0 : completedTaskCount / totalTaskCount;
}

