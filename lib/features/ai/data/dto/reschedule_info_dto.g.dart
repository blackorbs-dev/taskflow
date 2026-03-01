// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reschedule_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RescheduleInfoDto _$RescheduleInfoDtoFromJson(Map<String, dynamic> json) =>
    RescheduleInfoDto(
      dueAt: DateTime.parse(json['dueAt'] as String),
      description: json['description'] as String,
    );

Map<String, dynamic> _$RescheduleInfoDtoToJson(RescheduleInfoDto instance) =>
    <String, dynamic>{
      'dueAt': instance.dueAt.toIso8601String(),
      'description': instance.description,
    };
