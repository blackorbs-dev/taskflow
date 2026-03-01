// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suggested_task_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SuggestedTaskDto _$SuggestedTaskDtoFromJson(Map<String, dynamic> json) =>
    SuggestedTaskDto(
      title: json['title'] as String,
      description: json['description'] as String?,
      priority: $enumDecode(_$TaskPriorityEnumMap, json['priority']),
      dueAt: DateTime.parse(json['dueAt'] as String),
    );

Map<String, dynamic> _$SuggestedTaskDtoToJson(SuggestedTaskDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'priority': _$TaskPriorityEnumMap[instance.priority]!,
      'dueAt': instance.dueAt.toIso8601String(),
    };

const _$TaskPriorityEnumMap = {
  TaskPriority.low: 'low',
  TaskPriority.medium: 'medium',
  TaskPriority.high: 'high',
};
