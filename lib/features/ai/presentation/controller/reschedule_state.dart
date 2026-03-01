import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:taskflow/shared/domain/alert_info.dart';
import '../../domain/models/reschedule_info.dart';

part 'reschedule_state.freezed.dart';

@freezed
abstract class RescheduleState with _$RescheduleState{
  const factory RescheduleState({
    AlertInfo? alertInfo,
    @Default(true) bool isLoading,
    RescheduleInfo? rescheduleInfo
  }) = _RescheduleState;
}