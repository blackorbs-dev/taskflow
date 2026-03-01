// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileState {

 User get user; int get totalProjectCount; TaskSummary get taskSummary; bool get isSignedOut;
/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileStateCopyWith<ProfileState> get copyWith => _$ProfileStateCopyWithImpl<ProfileState>(this as ProfileState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileState&&(identical(other.user, user) || other.user == user)&&(identical(other.totalProjectCount, totalProjectCount) || other.totalProjectCount == totalProjectCount)&&(identical(other.taskSummary, taskSummary) || other.taskSummary == taskSummary)&&(identical(other.isSignedOut, isSignedOut) || other.isSignedOut == isSignedOut));
}


@override
int get hashCode => Object.hash(runtimeType,user,totalProjectCount,taskSummary,isSignedOut);

@override
String toString() {
  return 'ProfileState(user: $user, totalProjectCount: $totalProjectCount, taskSummary: $taskSummary, isSignedOut: $isSignedOut)';
}


}

/// @nodoc
abstract mixin class $ProfileStateCopyWith<$Res>  {
  factory $ProfileStateCopyWith(ProfileState value, $Res Function(ProfileState) _then) = _$ProfileStateCopyWithImpl;
@useResult
$Res call({
 User user, int totalProjectCount, TaskSummary taskSummary, bool isSignedOut
});


$UserCopyWith<$Res> get user;$TaskSummaryCopyWith<$Res> get taskSummary;

}
/// @nodoc
class _$ProfileStateCopyWithImpl<$Res>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._self, this._then);

  final ProfileState _self;
  final $Res Function(ProfileState) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,Object? totalProjectCount = null,Object? taskSummary = null,Object? isSignedOut = null,}) {
  return _then(_self.copyWith(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,totalProjectCount: null == totalProjectCount ? _self.totalProjectCount : totalProjectCount // ignore: cast_nullable_to_non_nullable
as int,taskSummary: null == taskSummary ? _self.taskSummary : taskSummary // ignore: cast_nullable_to_non_nullable
as TaskSummary,isSignedOut: null == isSignedOut ? _self.isSignedOut : isSignedOut // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TaskSummaryCopyWith<$Res> get taskSummary {
  
  return $TaskSummaryCopyWith<$Res>(_self.taskSummary, (value) {
    return _then(_self.copyWith(taskSummary: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProfileState].
extension ProfileStatePatterns on ProfileState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileState value)  $default,){
final _that = this;
switch (_that) {
case _ProfileState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileState value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( User user,  int totalProjectCount,  TaskSummary taskSummary,  bool isSignedOut)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
return $default(_that.user,_that.totalProjectCount,_that.taskSummary,_that.isSignedOut);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( User user,  int totalProjectCount,  TaskSummary taskSummary,  bool isSignedOut)  $default,) {final _that = this;
switch (_that) {
case _ProfileState():
return $default(_that.user,_that.totalProjectCount,_that.taskSummary,_that.isSignedOut);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( User user,  int totalProjectCount,  TaskSummary taskSummary,  bool isSignedOut)?  $default,) {final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
return $default(_that.user,_that.totalProjectCount,_that.taskSummary,_that.isSignedOut);case _:
  return null;

}
}

}

/// @nodoc


class _ProfileState implements ProfileState {
  const _ProfileState({this.user = const User(), this.totalProjectCount = 0, this.taskSummary = const TaskSummary(), this.isSignedOut = false});
  

@override@JsonKey() final  User user;
@override@JsonKey() final  int totalProjectCount;
@override@JsonKey() final  TaskSummary taskSummary;
@override@JsonKey() final  bool isSignedOut;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileStateCopyWith<_ProfileState> get copyWith => __$ProfileStateCopyWithImpl<_ProfileState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileState&&(identical(other.user, user) || other.user == user)&&(identical(other.totalProjectCount, totalProjectCount) || other.totalProjectCount == totalProjectCount)&&(identical(other.taskSummary, taskSummary) || other.taskSummary == taskSummary)&&(identical(other.isSignedOut, isSignedOut) || other.isSignedOut == isSignedOut));
}


@override
int get hashCode => Object.hash(runtimeType,user,totalProjectCount,taskSummary,isSignedOut);

@override
String toString() {
  return 'ProfileState(user: $user, totalProjectCount: $totalProjectCount, taskSummary: $taskSummary, isSignedOut: $isSignedOut)';
}


}

/// @nodoc
abstract mixin class _$ProfileStateCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory _$ProfileStateCopyWith(_ProfileState value, $Res Function(_ProfileState) _then) = __$ProfileStateCopyWithImpl;
@override @useResult
$Res call({
 User user, int totalProjectCount, TaskSummary taskSummary, bool isSignedOut
});


@override $UserCopyWith<$Res> get user;@override $TaskSummaryCopyWith<$Res> get taskSummary;

}
/// @nodoc
class __$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileStateCopyWith<$Res> {
  __$ProfileStateCopyWithImpl(this._self, this._then);

  final _ProfileState _self;
  final $Res Function(_ProfileState) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = null,Object? totalProjectCount = null,Object? taskSummary = null,Object? isSignedOut = null,}) {
  return _then(_ProfileState(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,totalProjectCount: null == totalProjectCount ? _self.totalProjectCount : totalProjectCount // ignore: cast_nullable_to_non_nullable
as int,taskSummary: null == taskSummary ? _self.taskSummary : taskSummary // ignore: cast_nullable_to_non_nullable
as TaskSummary,isSignedOut: null == isSignedOut ? _self.isSignedOut : isSignedOut // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of ProfileState
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
