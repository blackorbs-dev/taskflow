import 'package:json_annotation/json_annotation.dart';
import '../../domain/models/task.dart';

part 'task_dto.g.dart';

@JsonSerializable()
class TaskDto {
  final int id;
  final String title;
  final String? description;
  final bool isCompleted;
  final TaskPriority priority;
  final DateTime? dueAt;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  TaskDto({
    this.id = 0,
    required this.title,
    this.description,
    this.isCompleted = false,
    required this.priority,
    this.dueAt,
    this.createdAt,
    this.updatedAt,
  });

  factory TaskDto.fromJson(Map<String, dynamic> json) => _$TaskDtoFromJson(json);
  Map<String, dynamic> toJson() => _$TaskDtoToJson(this);
}