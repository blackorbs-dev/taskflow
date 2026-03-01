import 'package:freezed_annotation/freezed_annotation.dart';

part 'reschedule_info.freezed.dart';

@freezed
abstract class RescheduleInfo with _$RescheduleInfo {
  const factory RescheduleInfo({
    required DateTime dueAt,
    required String description,
  }) = _RescheduleInfo;
}