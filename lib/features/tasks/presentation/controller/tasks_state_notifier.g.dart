// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks_state_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TasksStateNotifier)
final tasksStateProvider = TasksStateNotifierFamily._();

final class TasksStateNotifierProvider
    extends $NotifierProvider<TasksStateNotifier, TasksState> {
  TasksStateNotifierProvider._({
    required TasksStateNotifierFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'tasksStateProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$tasksStateNotifierHash();

  @override
  String toString() {
    return r'tasksStateProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  TasksStateNotifier create() => TasksStateNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TasksState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TasksState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is TasksStateNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$tasksStateNotifierHash() =>
    r'c5feef9e3452b2366fb2e88ed4253cd545d51e4e';

final class TasksStateNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          TasksStateNotifier,
          TasksState,
          TasksState,
          TasksState,
          int
        > {
  TasksStateNotifierFamily._()
    : super(
        retry: null,
        name: r'tasksStateProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  TasksStateNotifierProvider call(int projectId) =>
      TasksStateNotifierProvider._(argument: projectId, from: this);

  @override
  String toString() => r'tasksStateProvider';
}

abstract class _$TasksStateNotifier extends $Notifier<TasksState> {
  late final _$args = ref.$arg as int;
  int get projectId => _$args;

  TasksState build(int projectId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<TasksState, TasksState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<TasksState, TasksState>,
              TasksState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
