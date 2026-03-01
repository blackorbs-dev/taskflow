// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reschedule_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RescheduleState {

 AlertInfo? get alertInfo; bool get isLoading; RescheduleInfo? get rescheduleInfo;
/// Create a copy of RescheduleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RescheduleStateCopyWith<RescheduleState> get copyWith => _$RescheduleStateCopyWithImpl<RescheduleState>(this as RescheduleState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RescheduleState&&(identical(other.alertInfo, alertInfo) || other.alertInfo == alertInfo)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.rescheduleInfo, rescheduleInfo) || other.rescheduleInfo == rescheduleInfo));
}


@override
int get hashCode => Object.hash(runtimeType,alertInfo,isLoading,rescheduleInfo);

@override
String toString() {
  return 'RescheduleState(alertInfo: $alertInfo, isLoading: $isLoading, rescheduleInfo: $rescheduleInfo)';
}


}

/// @nodoc
abstract mixin class $RescheduleStateCopyWith<$Res>  {
  factory $RescheduleStateCopyWith(RescheduleState value, $Res Function(RescheduleState) _then) = _$RescheduleStateCopyWithImpl;
@useResult
$Res call({
 AlertInfo? alertInfo, bool isLoading, RescheduleInfo? rescheduleInfo
});


$AlertInfoCopyWith<$Res>? get alertInfo;$RescheduleInfoCopyWith<$Res>? get rescheduleInfo;

}
/// @nodoc
class _$RescheduleStateCopyWithImpl<$Res>
    implements $RescheduleStateCopyWith<$Res> {
  _$RescheduleStateCopyWithImpl(this._self, this._then);

  final RescheduleState _self;
  final $Res Function(RescheduleState) _then;

/// Create a copy of RescheduleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? alertInfo = freezed,Object? isLoading = null,Object? rescheduleInfo = freezed,}) {
  return _then(_self.copyWith(
alertInfo: freezed == alertInfo ? _self.alertInfo : alertInfo // ignore: cast_nullable_to_non_nullable
as AlertInfo?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,rescheduleInfo: freezed == rescheduleInfo ? _self.rescheduleInfo : rescheduleInfo // ignore: cast_nullable_to_non_nullable
as RescheduleInfo?,
  ));
}
/// Create a copy of RescheduleState
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
}/// Create a copy of RescheduleState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RescheduleInfoCopyWith<$Res>? get rescheduleInfo {
    if (_self.rescheduleInfo == null) {
    return null;
  }

  return $RescheduleInfoCopyWith<$Res>(_self.rescheduleInfo!, (value) {
    return _then(_self.copyWith(rescheduleInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [RescheduleState].
extension RescheduleStatePatterns on RescheduleState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RescheduleState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RescheduleState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RescheduleState value)  $default,){
final _that = this;
switch (_that) {
case _RescheduleState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RescheduleState value)?  $default,){
final _that = this;
switch (_that) {
case _RescheduleState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AlertInfo? alertInfo,  bool isLoading,  RescheduleInfo? rescheduleInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RescheduleState() when $default != null:
return $default(_that.alertInfo,_that.isLoading,_that.rescheduleInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AlertInfo? alertInfo,  bool isLoading,  RescheduleInfo? rescheduleInfo)  $default,) {final _that = this;
switch (_that) {
case _RescheduleState():
return $default(_that.alertInfo,_that.isLoading,_that.rescheduleInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AlertInfo? alertInfo,  bool isLoading,  RescheduleInfo? rescheduleInfo)?  $default,) {final _that = this;
switch (_that) {
case _RescheduleState() when $default != null:
return $default(_that.alertInfo,_that.isLoading,_that.rescheduleInfo);case _:
  return null;

}
}

}

/// @nodoc


class _RescheduleState implements RescheduleState {
  const _RescheduleState({this.alertInfo, this.isLoading = true, this.rescheduleInfo});
  

@override final  AlertInfo? alertInfo;
@override@JsonKey() final  bool isLoading;
@override final  RescheduleInfo? rescheduleInfo;

/// Create a copy of RescheduleState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RescheduleStateCopyWith<_RescheduleState> get copyWith => __$RescheduleStateCopyWithImpl<_RescheduleState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RescheduleState&&(identical(other.alertInfo, alertInfo) || other.alertInfo == alertInfo)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.rescheduleInfo, rescheduleInfo) || other.rescheduleInfo == rescheduleInfo));
}


@override
int get hashCode => Object.hash(runtimeType,alertInfo,isLoading,rescheduleInfo);

@override
String toString() {
  return 'RescheduleState(alertInfo: $alertInfo, isLoading: $isLoading, rescheduleInfo: $rescheduleInfo)';
}


}

/// @nodoc
abstract mixin class _$RescheduleStateCopyWith<$Res> implements $RescheduleStateCopyWith<$Res> {
  factory _$RescheduleStateCopyWith(_RescheduleState value, $Res Function(_RescheduleState) _then) = __$RescheduleStateCopyWithImpl;
@override @useResult
$Res call({
 AlertInfo? alertInfo, bool isLoading, RescheduleInfo? rescheduleInfo
});


@override $AlertInfoCopyWith<$Res>? get alertInfo;@override $RescheduleInfoCopyWith<$Res>? get rescheduleInfo;

}
/// @nodoc
class __$RescheduleStateCopyWithImpl<$Res>
    implements _$RescheduleStateCopyWith<$Res> {
  __$RescheduleStateCopyWithImpl(this._self, this._then);

  final _RescheduleState _self;
  final $Res Function(_RescheduleState) _then;

/// Create a copy of RescheduleState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? alertInfo = freezed,Object? isLoading = null,Object? rescheduleInfo = freezed,}) {
  return _then(_RescheduleState(
alertInfo: freezed == alertInfo ? _self.alertInfo : alertInfo // ignore: cast_nullable_to_non_nullable
as AlertInfo?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,rescheduleInfo: freezed == rescheduleInfo ? _self.rescheduleInfo : rescheduleInfo // ignore: cast_nullable_to_non_nullable
as RescheduleInfo?,
  ));
}

/// Create a copy of RescheduleState
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
}/// Create a copy of RescheduleState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RescheduleInfoCopyWith<$Res>? get rescheduleInfo {
    if (_self.rescheduleInfo == null) {
    return null;
  }

  return $RescheduleInfoCopyWith<$Res>(_self.rescheduleInfo!, (value) {
    return _then(_self.copyWith(rescheduleInfo: value));
  });
}
}

// dart format on
