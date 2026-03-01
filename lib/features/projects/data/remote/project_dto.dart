import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_dto.freezed.dart';
part 'project_dto.g.dart';

@freezed
abstract class ProjectDto with _$ProjectDto {
  const factory ProjectDto({
    required int id,
    required String name,
    required int color,
    required String icon,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _ProjectDto;

  factory ProjectDto.fromJson(Map<String, dynamic> json) =>
      _$ProjectDtoFromJson(json);
}
