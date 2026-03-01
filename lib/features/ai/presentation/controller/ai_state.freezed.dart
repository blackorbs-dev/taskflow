// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AIState {

 String get prompt; bool get isLoading; bool get taskGenerated; AlertInfo? get alertInfo; List<SuggestedTask> get suggestedTasks; int get selectedTasksCount; List<Project> get projects; Project? get selectedProject;
/// Create a copy of AIState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AIStateCopyWith<AIState> get copyWith => _$AIStateCopyWithImpl<AIState>(this as AIState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AIState&&(identical(other.prompt, prompt) || other.prompt == prompt)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.taskGenerated, taskGenerated) || other.taskGenerated == taskGenerated)&&(identical(other.alertInfo, alertInfo) || other.alertInfo == alertInfo)&&const DeepCollectionEquality().equals(other.suggestedTasks, suggestedTasks)&&(identical(other.selectedTasksCount, selectedTasksCount) || other.selectedTasksCount == selectedTasksCount)&&const DeepCollectionEquality().equals(other.projects, projects)&&(identical(other.selectedProject, selectedProject) || other.selectedProject == selectedProject));
}


@override
int get hashCode => Object.hash(runtimeType,prompt,isLoading,taskGenerated,alertInfo,const DeepCollectionEquality().hash(suggestedTasks),selectedTasksCount,const DeepCollectionEquality().hash(projects),selectedProject);

@override
String toString() {
  return 'AIState(prompt: $prompt, isLoading: $isLoading, taskGenerated: $taskGenerated, alertInfo: $alertInfo, suggestedTasks: $suggestedTasks, selectedTasksCount: $selectedTasksCount, projects: $projects, selectedProject: $selectedProject)';
}


}

/// @nodoc
abstract mixin class $AIStateCopyWith<$Res>  {
  factory $AIStateCopyWith(AIState value, $Res Function(AIState) _then) = _$AIStateCopyWithImpl;
@useResult
$Res call({
 String prompt, bool isLoading, bool taskGenerated, AlertInfo? alertInfo, List<SuggestedTask> suggestedTasks, int selectedTasksCount, List<Project> projects, Project? selectedProject
});


$AlertInfoCopyWith<$Res>? get alertInfo;$ProjectCopyWith<$Res>? get selectedProject;

}
/// @nodoc
class _$AIStateCopyWithImpl<$Res>
    implements $AIStateCopyWith<$Res> {
  _$AIStateCopyWithImpl(this._self, this._then);

  final AIState _self;
  final $Res Function(AIState) _then;

/// Create a copy of AIState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? prompt = null,Object? isLoading = null,Object? taskGenerated = null,Object? alertInfo = freezed,Object? suggestedTasks = null,Object? selectedTasksCount = null,Object? projects = null,Object? selectedProject = freezed,}) {
  return _then(_self.copyWith(
prompt: null == prompt ? _self.prompt : prompt // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,taskGenerated: null == taskGenerated ? _self.taskGenerated : taskGenerated // ignore: cast_nullable_to_non_nullable
as bool,alertInfo: freezed == alertInfo ? _self.alertInfo : alertInfo // ignore: cast_nullable_to_non_nullable
as AlertInfo?,suggestedTasks: null == suggestedTasks ? _self.suggestedTasks : suggestedTasks // ignore: cast_nullable_to_non_nullable
as List<SuggestedTask>,selectedTasksCount: null == selectedTasksCount ? _self.selectedTasksCount : selectedTasksCount // ignore: cast_nullable_to_non_nullable
as int,projects: null == projects ? _self.projects : projects // ignore: cast_nullable_to_non_nullable
as List<Project>,selectedProject: freezed == selectedProject ? _self.selectedProject : selectedProject // ignore: cast_nullable_to_non_nullable
as Project?,
  ));
}
/// Create a copy of AIState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AlertInfoCopyWith<$Res>? get alertInfo {
    if (_self.alertInfo == null) {
    return null;
  }

  return $AlertInfoCopyWith<$Res>(_self.alertInfo!, (value) {
    return _then(_self.copyWith(alertInfo: value));
  });
}/// Create a copy of AIState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProjectCopyWith<$Res>? get selectedProject {
    if (_self.selectedProject == null) {
    return null;
  }

  return $ProjectCopyWith<$Res>(_self.selectedProject!, (value) {
    return _then(_self.copyWith(selectedProject: value));
  });
}
}


/// Adds pattern-matching-related methods to [AIState].
extension AIStatePatterns on AIState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AIState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AIState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AIState value)  $default,){
final _that = this;
switch (_that) {
case _AIState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AIState value)?  $default,){
final _that = this;
switch (_that) {
case _AIState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String prompt,  bool isLoading,  bool taskGenerated,  AlertInfo? alertInfo,  List<SuggestedTask> suggestedTasks,  int selectedTasksCount,  List<Project> projects,  Project? selectedProject)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AIState() when $default != null:
return $default(_that.prompt,_that.isLoading,_that.taskGenerated,_that.alertInfo,_that.suggestedTasks,_that.selectedTasksCount,_that.projects,_that.selectedProject);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String prompt,  bool isLoading,  bool taskGenerated,  AlertInfo? alertInfo,  List<SuggestedTask> suggestedTasks,  int selectedTasksCount,  List<Project> projects,  Project? selectedProject)  $default,) {final _that = this;
switch (_that) {
case _AIState():
return $default(_that.prompt,_that.isLoading,_that.taskGenerated,_that.alertInfo,_that.suggestedTasks,_that.selectedTasksCount,_that.projects,_that.selectedProject);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String prompt,  bool isLoading,  bool taskGenerated,  AlertInfo? alertInfo,  List<SuggestedTask> suggestedTasks,  int selectedTasksCount,  List<Project> projects,  Project? selectedProject)?  $default,) {final _that = this;
switch (_that) {
case _AIState() when $default != null:
return $default(_that.prompt,_that.isLoading,_that.taskGenerated,_that.alertInfo,_that.suggestedTasks,_that.selectedTasksCount,_that.projects,_that.selectedProject);case _:
  return null;

}
}

}

/// @nodoc


class _AIState implements AIState {
  const _AIState({this.prompt = '', this.isLoading = false, this.taskGenerated = false, this.alertInfo, this.suggestedTasks = const [], this.selectedTasksCount = 0, this.projects = const [], this.selectedProject});
  

@override@JsonKey() final  String prompt;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool taskGenerated;
@override final  AlertInfo? alertInfo;
@override@JsonKey() final  List<SuggestedTask> suggestedTasks;
@override@JsonKey() final  int selectedTasksCount;
@override@JsonKey() final  List<Project> projects;
@override final  Project? selectedProject;

/// Create a copy of AIState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AIStateCopyWith<_AIState> get copyWith => __$AIStateCopyWithImpl<_AIState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AIState&&(identical(other.prompt, prompt) || other.prompt == prompt)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.taskGenerated, taskGenerated) || other.taskGenerated == taskGenerated)&&(identical(other.alertInfo, alertInfo) || other.alertInfo == alertInfo)&&const DeepCollectionEquality().equals(other.suggestedTasks, suggestedTasks)&&(identical(other.selectedTasksCount, selectedTasksCount) || other.selectedTasksCount == selectedTasksCount)&&const DeepCollectionEquality().equals(other.projects, projects)&&(identical(other.selectedProject, selectedProject) || other.selectedProject == selectedProject));
}


@override
int get hashCode => Object.hash(runtimeType,prompt,isLoading,taskGenerated,alertInfo,const DeepCollectionEquality().hash(suggestedTasks),selectedTasksCount,const DeepCollectionEquality().hash(projects),selectedProject);

@override
String toString() {
  return 'AIState(prompt: $prompt, isLoading: $isLoading, taskGenerated: $taskGenerated, alertInfo: $alertInfo, suggestedTasks: $suggestedTasks, selectedTasksCount: $selectedTasksCount, projects: $projects, selectedProject: $selectedProject)';
}


}

/// @nodoc
abstract mixin class _$AIStateCopyWith<$Res> implements $AIStateCopyWith<$Res> {
  factory _$AIStateCopyWith(_AIState value, $Res Function(_AIState) _then) = __$AIStateCopyWithImpl;
@override @useResult
$Res call({
 String prompt, bool isLoading, bool taskGenerated, AlertInfo? alertInfo, List<SuggestedTask> suggestedTasks, int selectedTasksCount, List<Project> projects, Project? selectedProject
});


@override $AlertInfoCopyWith<$Res>? get alertInfo;@override $ProjectCopyWith<$Res>? get selectedProject;

}
/// @nodoc
class __$AIStateCopyWithImpl<$Res>
    implements _$AIStateCopyWith<$Res> {
  __$AIStateCopyWithImpl(this._self, this._then);

  final _AIState _self;
  final $Res Function(_AIState) _then;

/// Create a copy of AIState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? prompt = null,Object? isLoading = null,Object? taskGenerated = null,Object? alertInfo = freezed,Object? suggestedTasks = null,Object? selectedTasksCount = null,Object? projects = null,Object? selectedProject = freezed,}) {
  return _then(_AIState(
prompt: null == prompt ? _self.prompt : prompt // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,taskGenerated: null == taskGenerated ? _self.taskGenerated : taskGenerated // ignore: cast_nullable_to_non_nullable
as bool,alertInfo: freezed == alertInfo ? _self.alertInfo : alertInfo // ignore: cast_nullable_to_non_nullable
as AlertInfo?,suggestedTasks: null == suggestedTasks ? _self.suggestedTasks : suggestedTasks // ignore: cast_nullable_to_non_nullable
as List<SuggestedTask>,selectedTasksCount: null == selectedTasksCount ? _self.selectedTasksCount : selectedTasksCount // ignore: cast_nullable_to_non_nullable
as int,projects: null == projects ? _self.projects : projects // ignore: cast_nullable_to_non_nullable
as List<Project>,selectedProject: freezed == selectedProject ? _self.selectedProject : selectedProject // ignore: cast_nullable_to_non_nullable
as Project?,
  ));
}

/// Create a copy of AIState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AlertInfoCopyWith<$Res>? get alertInfo {
    if (_self.alertInfo == null) {
    return null;
  }

  return $AlertInfoCopyWith<$Res>(_self.alertInfo!, (value) {
    return _then(_self.copyWith(alertInfo: value));
  });
}/// Create a copy of AIState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProjectCopyWith<$Res>? get selectedProject {
    if (_self.selectedProject == null) {
    return null;
  }

  return $ProjectCopyWith<$Res>(_self.selectedProject!, (value) {
    return _then(_self.copyWith(selectedProject: value));
  });
}
}

// dart format on
