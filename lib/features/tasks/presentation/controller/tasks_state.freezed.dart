// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasks_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TasksState {

 Task get selectedTask; List<Task> get pendingTasks; List<Task> get completedTasks; Project? get project; Project? get selectedProject; List<Project> get projects;
/// Create a copy of TasksState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TasksStateCopyWith<TasksState> get copyWith => _$TasksStateCopyWithImpl<TasksState>(this as TasksState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TasksState&&(identical(other.selectedTask, selectedTask) || other.selectedTask == selectedTask)&&const DeepCollectionEquality().equals(other.pendingTasks, pendingTasks)&&const DeepCollectionEquality().equals(other.completedTasks, completedTasks)&&(identical(other.project, project) || other.project == project)&&(identical(other.selectedProject, selectedProject) || other.selectedProject == selectedProject)&&const DeepCollectionEquality().equals(other.projects, projects));
}


@override
int get hashCode => Object.hash(runtimeType,selectedTask,const DeepCollectionEquality().hash(pendingTasks),const DeepCollectionEquality().hash(completedTasks),project,selectedProject,const DeepCollectionEquality().hash(projects));

@override
String toString() {
  return 'TasksState(selectedTask: $selectedTask, pendingTasks: $pendingTasks, completedTasks: $completedTasks, project: $project, selectedProject: $selectedProject, projects: $projects)';
}


}

/// @nodoc
abstract mixin class $TasksStateCopyWith<$Res>  {
  factory $TasksStateCopyWith(TasksState value, $Res Function(TasksState) _then) = _$TasksStateCopyWithImpl;
@useResult
$Res call({
 Task selectedTask, List<Task> pendingTasks, List<Task> completedTasks, Project? project, Project? selectedProject, List<Project> projects
});


$TaskCopyWith<$Res> get selectedTask;$ProjectCopyWith<$Res>? get project;$ProjectCopyWith<$Res>? get selectedProject;

}
/// @nodoc
class _$TasksStateCopyWithImpl<$Res>
    implements $TasksStateCopyWith<$Res> {
  _$TasksStateCopyWithImpl(this._self, this._then);

  final TasksState _self;
  final $Res Function(TasksState) _then;

/// Create a copy of TasksState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedTask = null,Object? pendingTasks = null,Object? completedTasks = null,Object? project = freezed,Object? selectedProject = freezed,Object? projects = null,}) {
  return _then(_self.copyWith(
selectedTask: null == selectedTask ? _self.selectedTask : selectedTask // ignore: cast_nullable_to_non_nullable
as Task,pendingTasks: null == pendingTasks ? _self.pendingTasks : pendingTasks // ignore: cast_nullable_to_non_nullable
as List<Task>,completedTasks: null == completedTasks ? _self.completedTasks : completedTasks // ignore: cast_nullable_to_non_nullable
as List<Task>,project: freezed == project ? _self.project : project // ignore: cast_nullable_to_non_nullable
as Project?,selectedProject: freezed == selectedProject ? _self.selectedProject : selectedProject // ignore: cast_nullable_to_non_nullable
as Project?,projects: null == projects ? _self.projects : projects // ignore: cast_nullable_to_non_nullable
as List<Project>,
  ));
}
/// Create a copy of TasksState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TaskCopyWith<$Res> get selectedTask {
  
  return $TaskCopyWith<$Res>(_self.selectedTask, (value) {
    return _then(_self.copyWith(selectedTask: value));
  });
}/// Create a copy of TasksState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProjectCopyWith<$Res>? get project {
    if (_self.project == null) {
    return null;
  }

  return $ProjectCopyWith<$Res>(_self.project!, (value) {
    return _then(_self.copyWith(project: value));
  });
}/// Create a copy of TasksState
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


/// Adds pattern-matching-related methods to [TasksState].
extension TasksStatePatterns on TasksState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TasksState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TasksState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TasksState value)  $default,){
final _that = this;
switch (_that) {
case _TasksState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TasksState value)?  $default,){
final _that = this;
switch (_that) {
case _TasksState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Task selectedTask,  List<Task> pendingTasks,  List<Task> completedTasks,  Project? project,  Project? selectedProject,  List<Project> projects)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TasksState() when $default != null:
return $default(_that.selectedTask,_that.pendingTasks,_that.completedTasks,_that.project,_that.selectedProject,_that.projects);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Task selectedTask,  List<Task> pendingTasks,  List<Task> completedTasks,  Project? project,  Project? selectedProject,  List<Project> projects)  $default,) {final _that = this;
switch (_that) {
case _TasksState():
return $default(_that.selectedTask,_that.pendingTasks,_that.completedTasks,_that.project,_that.selectedProject,_that.projects);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Task selectedTask,  List<Task> pendingTasks,  List<Task> completedTasks,  Project? project,  Project? selectedProject,  List<Project> projects)?  $default,) {final _that = this;
switch (_that) {
case _TasksState() when $default != null:
return $default(_that.selectedTask,_that.pendingTasks,_that.completedTasks,_that.project,_that.selectedProject,_that.projects);case _:
  return null;

}
}

}

/// @nodoc


class _TasksState implements TasksState {
  const _TasksState({this.selectedTask = const Task(), final  List<Task> pendingTasks = const [], final  List<Task> completedTasks = const [], this.project, this.selectedProject, final  List<Project> projects = const []}): _pendingTasks = pendingTasks,_completedTasks = completedTasks,_projects = projects;
  

@override@JsonKey() final  Task selectedTask;
 final  List<Task> _pendingTasks;
@override@JsonKey() List<Task> get pendingTasks {
  if (_pendingTasks is EqualUnmodifiableListView) return _pendingTasks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pendingTasks);
}

 final  List<Task> _completedTasks;
@override@JsonKey() List<Task> get completedTasks {
  if (_completedTasks is EqualUnmodifiableListView) return _completedTasks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_completedTasks);
}

@override final  Project? project;
@override final  Project? selectedProject;
 final  List<Project> _projects;
@override@JsonKey() List<Project> get projects {
  if (_projects is EqualUnmodifiableListView) return _projects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_projects);
}


/// Create a copy of TasksState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TasksStateCopyWith<_TasksState> get copyWith => __$TasksStateCopyWithImpl<_TasksState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TasksState&&(identical(other.selectedTask, selectedTask) || other.selectedTask == selectedTask)&&const DeepCollectionEquality().equals(other._pendingTasks, _pendingTasks)&&const DeepCollectionEquality().equals(other._completedTasks, _completedTasks)&&(identical(other.project, project) || other.project == project)&&(identical(other.selectedProject, selectedProject) || other.selectedProject == selectedProject)&&const DeepCollectionEquality().equals(other._projects, _projects));
}


@override
int get hashCode => Object.hash(runtimeType,selectedTask,const DeepCollectionEquality().hash(_pendingTasks),const DeepCollectionEquality().hash(_completedTasks),project,selectedProject,const DeepCollectionEquality().hash(_projects));

@override
String toString() {
  return 'TasksState(selectedTask: $selectedTask, pendingTasks: $pendingTasks, completedTasks: $completedTasks, project: $project, selectedProject: $selectedProject, projects: $projects)';
}


}

/// @nodoc
abstract mixin class _$TasksStateCopyWith<$Res> implements $TasksStateCopyWith<$Res> {
  factory _$TasksStateCopyWith(_TasksState value, $Res Function(_TasksState) _then) = __$TasksStateCopyWithImpl;
@override @useResult
$Res call({
 Task selectedTask, List<Task> pendingTasks, List<Task> completedTasks, Project? project, Project? selectedProject, List<Project> projects
});


@override $TaskCopyWith<$Res> get selectedTask;@override $ProjectCopyWith<$Res>? get project;@override $ProjectCopyWith<$Res>? get selectedProject;

}
/// @nodoc
class __$TasksStateCopyWithImpl<$Res>
    implements _$TasksStateCopyWith<$Res> {
  __$TasksStateCopyWithImpl(this._self, this._then);

  final _TasksState _self;
  final $Res Function(_TasksState) _then;

/// Create a copy of TasksState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedTask = null,Object? pendingTasks = null,Object? completedTasks = null,Object? project = freezed,Object? selectedProject = freezed,Object? projects = null,}) {
  return _then(_TasksState(
selectedTask: null == selectedTask ? _self.selectedTask : selectedTask // ignore: cast_nullable_to_non_nullable
as Task,pendingTasks: null == pendingTasks ? _self._pendingTasks : pendingTasks // ignore: cast_nullable_to_non_nullable
as List<Task>,completedTasks: null == completedTasks ? _self._completedTasks : completedTasks // ignore: cast_nullable_to_non_nullable
as List<Task>,project: freezed == project ? _self.project : project // ignore: cast_nullable_to_non_nullable
as Project?,selectedProject: freezed == selectedProject ? _self.selectedProject : selectedProject // ignore: cast_nullable_to_non_nullable
as Project?,projects: null == projects ? _self._projects : projects // ignore: cast_nullable_to_non_nullable
as List<Project>,
  ));
}

/// Create a copy of TasksState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TaskCopyWith<$Res> get selectedTask {
  
  return $TaskCopyWith<$Res>(_self.selectedTask, (value) {
    return _then(_self.copyWith(selectedTask: value));
  });
}/// Create a copy of TasksState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProjectCopyWith<$Res>? get project {
    if (_self.project == null) {
    return null;
  }

  return $ProjectCopyWith<$Res>(_self.project!, (value) {
    return _then(_self.copyWith(project: value));
  });
}/// Create a copy of TasksState
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
