import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:taskflow/features/ai/domain/models/reschedule_info.dart';
import 'reschedule_state.dart';

part 'reschedule_state_notifier.g.dart';

@riverpod
class RescheduleStateNotifier extends _$RescheduleStateNotifier{

  @override
  RescheduleState build() {
    return RescheduleState();
  }

}

