// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {

 String get userName; TaskSummary get taskSummary; List<Task> get overdueTasks; List<Project> get projects;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.taskSummary, taskSummary) || other.taskSummary == taskSummary)&&const DeepCollectionEquality().equals(other.overdueTasks, overdueTasks)&&const DeepCollectionEquality().equals(other.projects, projects));
}


@override
int get hashCode => Object.hash(runtimeType,userName,taskSummary,const DeepCollectionEquality().hash(overdueTasks),const DeepCollectionEquality().hash(projects));

@override
String toString() {
  return 'HomeState(userName: $userName, taskSummary: $taskSummary, overdueTasks: $overdueTasks, projects: $projects)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 String userName, TaskSummary taskSummary, List<Task> overdueTasks, List<Project> projects
});


$TaskSummaryCopyWith<$Res> get taskSummary;

}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userName = null,Object? taskSummary = null,Object? overdueTasks = null,Object? projects = null,}) {
  return _then(_self.copyWith(
userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,taskSummary: null == taskSummary ? _self.taskSummary : taskSummary // ignore: cast_nullable_to_non_nullable
as TaskSummary,overdueTasks: null == overdueTasks ? _self.overdueTasks : overdueTasks // ignore: cast_nullable_to_non_nullable
as List<Task>,projects: null == projects ? _self.projects : projects // ignore: cast_nullable_to_non_nullable
as List<Project>,
  ));
}
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TaskSummaryCopyWith<$Res> get taskSummary {
  
  return $TaskSummaryCopyWith<$Res>(_self.taskSummary, (value) {
    return _then(_self.copyWith(taskSummary: value));
  });
}
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeState value)  $default,){
final _that = this;
switch (_that) {
case _HomeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeState value)?  $default,){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userName,  TaskSummary taskSummary,  List<Task> overdueTasks,  List<Project> projects)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.userName,_that.taskSummary,_that.overdueTasks,_that.projects);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userName,  TaskSummary taskSummary,  List<Task> overdueTasks,  List<Project> projects)  $default,) {final _that = this;
switch (_that) {
case _HomeState():
return $default(_that.userName,_that.taskSummary,_that.overdueTasks,_that.projects);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userName,  TaskSummary taskSummary,  List<Task> overdueTasks,  List<Project> projects)?  $default,) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.userName,_that.taskSummary,_that.overdueTasks,_that.projects);case _:
  return null;

}
}

}

/// @nodoc


class _HomeState implements HomeState {
  const _HomeState({required this.userName, this.taskSummary = const TaskSummary(), final  List<Task> overdueTasks = const <Task>[], final  List<Project> projects = const <Project>[]}): _overdueTasks = overdueTasks,_projects = projects;
  

@override final  String userName;
@override@JsonKey() final  TaskSummary taskSummary;
 final  List<Task> _overdueTasks;
@override@JsonKey() List<Task> get overdueTasks {
  if (_overdueTasks is EqualUnmodifiableListView) return _overdueTasks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_overdueTasks);
}

 final  List<Project> _projects;
@override@JsonKey() List<Project> get projects {
  if (_projects is EqualUnmodifiableListView) return _projects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_projects);
}


/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.taskSummary, taskSummary) || other.taskSummary == taskSummary)&&const DeepCollectionEquality().equals(other._overdueTasks, _overdueTasks)&&const DeepCollectionEquality().equals(other._projects, _projects));
}


@override
int get hashCode => Object.hash(runtimeType,userName,taskSummary,const DeepCollectionEquality().hash(_overdueTasks),const DeepCollectionEquality().hash(_projects));

@override
String toString() {
  return 'HomeState(userName: $userName, taskSummary: $taskSummary, overdueTasks: $overdueTasks, projects: $projects)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 String userName, TaskSummary taskSummary, List<Task> overdueTasks, List<Project> projects
});


@override $TaskSummaryCopyWith<$Res> get taskSummary;

}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userName = null,Object? taskSummary = null,Object? overdueTasks = null,Object? projects = null,}) {
  return _then(_HomeState(
userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,taskSummary: null == taskSummary ? _self.taskSummary : taskSummary // ignore: cast_nullable_to_non_nullable
as TaskSummary,overdueTasks: null == overdueTasks ? _self._overdueTasks : overdueTasks // ignore: cast_nullable_to_non_nullable
as List<Task>,projects: null == projects ? _self._projects : projects // ignore: cast_nullable_to_non_nullable
as List<Project>,
  ));
}

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TaskSummaryCopyWith<$Res> get taskSummary {
  
  return $TaskSummaryCopyWith<$Res>(_self.taskSummary, (value) {
    return _then(_self.copyWith(taskSummary: value));
  });
}
}

// dart format on
