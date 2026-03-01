// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_state_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(LoginStateNotifier)
final loginStateProvider = LoginStateNotifierProvider._();

final class LoginStateNotifierProvider
    extends $NotifierProvider<LoginStateNotifier, AuthState<LoginInfo>> {
  LoginStateNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loginStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loginStateNotifierHash();

  @$internal
  @override
  LoginStateNotifier create() => LoginStateNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthState<LoginInfo> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthState<LoginInfo>>(value),
    );
  }
}

String _$loginStateNotifierHash() =>
    r'a30b244fe447b3f9ed609cb4d6103eaccc6f3471';

abstract class _$LoginStateNotifier extends $Notifier<AuthState<LoginInfo>> {
  AuthState<LoginInfo> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AuthState<LoginInfo>, AuthState<LoginInfo>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AuthState<LoginInfo>, AuthState<LoginInfo>>,
              AuthState<LoginInfo>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
