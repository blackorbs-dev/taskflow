// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projects_state_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProjectsStateNotifier)
final projectsStateProvider = ProjectsStateNotifierProvider._();

final class ProjectsStateNotifierProvider
    extends $NotifierProvider<ProjectsStateNotifier, ProjectsState> {
  ProjectsStateNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'projectsStateProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$projectsStateNotifierHash();

  @$internal
  @override
  ProjectsStateNotifier create() => ProjectsStateNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProjectsState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProjectsState>(value),
    );
  }
}

String _$projectsStateNotifierHash() =>
    r'dc400f4b50cefd80c42e65027dc281b8f7fde605';

abstract class _$ProjectsStateNotifier extends $Notifier<ProjectsState> {
  ProjectsState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<ProjectsState, ProjectsState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ProjectsState, ProjectsState>,
              ProjectsState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
