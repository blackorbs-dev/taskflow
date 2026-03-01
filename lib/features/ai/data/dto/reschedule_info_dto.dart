import 'package:json_annotation/json_annotation.dart';

part 'reschedule_info_dto.g.dart';

@JsonSerializable()
class RescheduleInfoDto {
  final DateTime dueAt;
  final String description;

  const RescheduleInfoDto({
    required this.dueAt,
    required this.description,
  });

  factory RescheduleInfoDto.fromJson(Map<String, dynamic> json) => _$RescheduleInfoDtoFromJson(json);
  Map<String, dynamic> toJson() => _$RescheduleInfoDtoToJson(this);
}