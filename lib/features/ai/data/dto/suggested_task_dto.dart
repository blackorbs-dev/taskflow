import 'package:json_annotation/json_annotation.dart';
import 'package:taskflow/features/tasks/domain/models/task.dart';

part 'suggested_task_dto.g.dart';

@JsonSerializable()
class SuggestedTaskDto {
  final String title;
  final String? description;
  final TaskPriority priority;
  final DateTime dueAt;

  const SuggestedTaskDto({
    required this.title,
    this.description,
    required this.priority,
    required this.dueAt,
  });

  factory SuggestedTaskDto.fromJson(Map<String, dynamic> json) => _$SuggestedTaskDtoFromJson(json);
  Map<String, dynamic> toJson() => _$SuggestedTaskDtoToJson(this);
}