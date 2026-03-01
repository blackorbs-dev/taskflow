// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_state_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SignupStateNotifier)
final signupStateProvider = SignupStateNotifierProvider._();

final class SignupStateNotifierProvider
    extends $NotifierProvider<SignupStateNotifier, AuthState<SignupInfo>> {
  SignupStateNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'signupStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$signupStateNotifierHash();

  @$internal
  @override
  SignupStateNotifier create() => SignupStateNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthState<SignupInfo> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthState<SignupInfo>>(value),
    );
  }
}

String _$signupStateNotifierHash() =>
    r'ac48e553a9fd0b0a186d51c5963cad01a3828b6e';

abstract class _$SignupStateNotifier extends $Notifier<AuthState<SignupInfo>> {
  AuthState<SignupInfo> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AuthState<SignupInfo>, AuthState<SignupInfo>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AuthState<SignupInfo>, AuthState<SignupInfo>>,
              AuthState<SignupInfo>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
