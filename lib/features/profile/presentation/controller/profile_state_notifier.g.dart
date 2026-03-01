// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_state_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProfileStateNotifier)
final profileStateProvider = ProfileStateNotifierProvider._();

final class ProfileStateNotifierProvider
    extends $NotifierProvider<ProfileStateNotifier, ProfileState> {
  ProfileStateNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'profileStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profileStateNotifierHash();

  @$internal
  @override
  ProfileStateNotifier create() => ProfileStateNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProfileState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProfileState>(value),
    );
  }
}

String _$profileStateNotifierHash() =>
    r'051cc9d31a172ee10553ef28301237827399d563';

abstract class _$ProfileStateNotifier extends $Notifier<ProfileState> {
  ProfileState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<ProfileState, ProfileState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ProfileState, ProfileState>,
              ProfileState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
