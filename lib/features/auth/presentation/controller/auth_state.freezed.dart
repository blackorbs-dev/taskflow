// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthState<T> {

 bool get isLoading; bool get isAuthenticated; AlertInfo? get alertInfo; T get data;
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthStateCopyWith<T, AuthState<T>> get copyWith => _$AuthStateCopyWithImpl<T, AuthState<T>>(this as AuthState<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState<T>&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isAuthenticated, isAuthenticated) || other.isAuthenticated == isAuthenticated)&&(identical(other.alertInfo, alertInfo) || other.alertInfo == alertInfo)&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isAuthenticated,alertInfo,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'AuthState<$T>(isLoading: $isLoading, isAuthenticated: $isAuthenticated, alertInfo: $alertInfo, data: $data)';
}


}

/// @nodoc
abstract mixin class $AuthStateCopyWith<T,$Res>  {
  factory $AuthStateCopyWith(AuthState<T> value, $Res Function(AuthState<T>) _then) = _$AuthStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isAuthenticated, AlertInfo? alertInfo, T data
});


$AlertInfoCopyWith<$Res>? get alertInfo;

}
/// @nodoc
class _$AuthStateCopyWithImpl<T,$Res>
    implements $AuthStateCopyWith<T, $Res> {
  _$AuthStateCopyWithImpl(this._self, this._then);

  final AuthState<T> _self;
  final $Res Function(AuthState<T>) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isAuthenticated = null,Object? alertInfo = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isAuthenticated: null == isAuthenticated ? _self.isAuthenticated : isAuthenticated // ignore: cast_nullable_to_non_nullable
as bool,alertInfo: freezed == alertInfo ? _self.alertInfo : alertInfo // ignore: cast_nullable_to_non_nullable
as AlertInfo?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}
/// Create a copy of AuthState
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
}
}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns<T> on AuthState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthState<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthState<T> value)  $default,){
final _that = this;
switch (_that) {
case _AuthState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthState<T> value)?  $default,){
final _that = this;
switch (_that) {
case _AuthState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isAuthenticated,  AlertInfo? alertInfo,  T data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that.isLoading,_that.isAuthenticated,_that.alertInfo,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isAuthenticated,  AlertInfo? alertInfo,  T data)  $default,) {final _that = this;
switch (_that) {
case _AuthState():
return $default(_that.isLoading,_that.isAuthenticated,_that.alertInfo,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isAuthenticated,  AlertInfo? alertInfo,  T data)?  $default,) {final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that.isLoading,_that.isAuthenticated,_that.alertInfo,_that.data);case _:
  return null;

}
}

}

/// @nodoc


class _AuthState<T> implements AuthState<T> {
  const _AuthState({this.isLoading = false, this.isAuthenticated = false, this.alertInfo, required this.data});
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isAuthenticated;
@override final  AlertInfo? alertInfo;
@override final  T data;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthStateCopyWith<T, _AuthState<T>> get copyWith => __$AuthStateCopyWithImpl<T, _AuthState<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthState<T>&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isAuthenticated, isAuthenticated) || other.isAuthenticated == isAuthenticated)&&(identical(other.alertInfo, alertInfo) || other.alertInfo == alertInfo)&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isAuthenticated,alertInfo,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'AuthState<$T>(isLoading: $isLoading, isAuthenticated: $isAuthenticated, alertInfo: $alertInfo, data: $data)';
}


}

/// @nodoc
abstract mixin class _$AuthStateCopyWith<T,$Res> implements $AuthStateCopyWith<T, $Res> {
  factory _$AuthStateCopyWith(_AuthState<T> value, $Res Function(_AuthState<T>) _then) = __$AuthStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isAuthenticated, AlertInfo? alertInfo, T data
});


@override $AlertInfoCopyWith<$Res>? get alertInfo;

}
/// @nodoc
class __$AuthStateCopyWithImpl<T,$Res>
    implements _$AuthStateCopyWith<T, $Res> {
  __$AuthStateCopyWithImpl(this._self, this._then);

  final _AuthState<T> _self;
  final $Res Function(_AuthState<T>) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isAuthenticated = null,Object? alertInfo = freezed,Object? data = freezed,}) {
  return _then(_AuthState<T>(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isAuthenticated: null == isAuthenticated ? _self.isAuthenticated : isAuthenticated // ignore: cast_nullable_to_non_nullable
as bool,alertInfo: freezed == alertInfo ? _self.alertInfo : alertInfo // ignore: cast_nullable_to_non_nullable
as AlertInfo?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}

/// Create a copy of AuthState
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
}
}

// dart format on
