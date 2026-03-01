// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reschedule_state_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(RescheduleStateNotifier)
final rescheduleStateProvider = RescheduleStateNotifierProvider._();

final class RescheduleStateNotifierProvider
    extends $NotifierProvider<RescheduleStateNotifier, RescheduleState> {
  RescheduleStateNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'rescheduleStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$rescheduleStateNotifierHash();

  @$internal
  @override
  RescheduleStateNotifier create() => RescheduleStateNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RescheduleState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RescheduleState>(value),
    );
  }
}

String _$rescheduleStateNotifierHash() =>
    r'a5e12f92d5946a7bc4fc5580e71c742a4403a8f4';

abstract class _$RescheduleStateNotifier extends $Notifier<RescheduleState> {
  RescheduleState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<RescheduleState, RescheduleState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<RescheduleState, RescheduleState>,
              RescheduleState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
