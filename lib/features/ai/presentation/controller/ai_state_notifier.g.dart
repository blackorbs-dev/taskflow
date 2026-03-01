// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_state_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AiStateNotifier)
final aiStateProvider = AiStateNotifierProvider._();

final class AiStateNotifierProvider
    extends $NotifierProvider<AiStateNotifier, AIState> {
  AiStateNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'aiStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$aiStateNotifierHash();

  @$internal
  @override
  AiStateNotifier create() => AiStateNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AIState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AIState>(value),
    );
  }
}

String _$aiStateNotifierHash() => r'87ba5560f19cc21c2684217468cb5c7e6d52fff5';

abstract class _$AiStateNotifier extends $Notifier<AIState> {
  AIState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AIState, AIState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AIState, AIState>,
              AIState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
