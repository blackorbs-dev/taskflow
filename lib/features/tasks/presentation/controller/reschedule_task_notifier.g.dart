// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reschedule_task_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(RescheduleTaskNotifier)
final rescheduleTaskProvider = RescheduleTaskNotifierFamily._();

final class RescheduleTaskNotifierProvider
    extends $AsyncNotifierProvider<RescheduleTaskNotifier, RescheduleInfo> {
  RescheduleTaskNotifierProvider._({
    required RescheduleTaskNotifierFamily super.from,
    required Task super.argument,
  }) : super(
         retry: null,
         name: r'rescheduleTaskProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$rescheduleTaskNotifierHash();

  @override
  String toString() {
    return r'rescheduleTaskProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  RescheduleTaskNotifier create() => RescheduleTaskNotifier();

  @override
  bool operator ==(Object other) {
    return other is RescheduleTaskNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$rescheduleTaskNotifierHash() =>
    r'8f4f3e46f0b0ec4de8574793f198873544a6b5ef';

final class RescheduleTaskNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          RescheduleTaskNotifier,
          AsyncValue<RescheduleInfo>,
          RescheduleInfo,
          FutureOr<RescheduleInfo>,
          Task
        > {
  RescheduleTaskNotifierFamily._()
    : super(
        retry: null,
        name: r'rescheduleTaskProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  RescheduleTaskNotifierProvider call(Task task) =>
      RescheduleTaskNotifierProvider._(argument: task, from: this);

  @override
  String toString() => r'rescheduleTaskProvider';
}

abstract class _$RescheduleTaskNotifier extends $AsyncNotifier<RescheduleInfo> {
  late final _$args = ref.$arg as Task;
  Task get task => _$args;

  FutureOr<RescheduleInfo> build(Task task);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<RescheduleInfo>, RescheduleInfo>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<RescheduleInfo>, RescheduleInfo>,
              AsyncValue<RescheduleInfo>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
