import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:taskflow/features/tasks/domain/models/task_summary.dart';
import 'package:taskflow/shared/domain/user.dart';

part 'profile_state.freezed.dart';

@freezed
abstract class ProfileState with _$ProfileState{
  const factory ProfileState({
    @Default(User()) User user,
    @Default(0) int totalProjectCount,
    @Default(TaskSummary()) TaskSummary taskSummary,
    @Default(false) bool isSignedOut,
  }) = _ProfileState;
}