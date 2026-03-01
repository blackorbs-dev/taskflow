// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alert_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AlertInfo {

 String get message; AlertType get type;
/// Create a copy of AlertInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlertInfoCopyWith<AlertInfo> get copyWith => _$AlertInfoCopyWithImpl<AlertInfo>(this as AlertInfo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AlertInfo&&(identical(other.message, message) || other.message == message)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,message,type);

@override
String toString() {
  return 'AlertInfo(message: $message, type: $type)';
}


}

/// @nodoc
abstract mixin class $AlertInfoCopyWith<$Res>  {
  factory $AlertInfoCopyWith(AlertInfo value, $Res Function(AlertInfo) _then) = _$AlertInfoCopyWithImpl;
@useResult
$Res call({
 String message, AlertType type
});




}
/// @nodoc
class _$AlertInfoCopyWithImpl<$Res>
    implements $AlertInfoCopyWith<$Res> {
  _$AlertInfoCopyWithImpl(this._self, this._then);

  final AlertInfo _self;
  final $Res Function(AlertInfo) _then;

/// Create a copy of AlertInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? type = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as AlertType,
  ));
}

}


/// Adds pattern-matching-related methods to [AlertInfo].
extension AlertInfoPatterns on AlertInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AlertInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AlertInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AlertInfo value)  $default,){
final _that = this;
switch (_that) {
case _AlertInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AlertInfo value)?  $default,){
final _that = this;
switch (_that) {
case _AlertInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message,  AlertType type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AlertInfo() when $default != null:
return $default(_that.message,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message,  AlertType type)  $default,) {final _that = this;
switch (_that) {
case _AlertInfo():
return $default(_that.message,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message,  AlertType type)?  $default,) {final _that = this;
switch (_that) {
case _AlertInfo() when $default != null:
return $default(_that.message,_that.type);case _:
  return null;

}
}

}

/// @nodoc


class _AlertInfo implements AlertInfo {
  const _AlertInfo({required this.message, this.type = AlertType.error});
  

@override final  String message;
@override@JsonKey() final  AlertType type;

/// Create a copy of AlertInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AlertInfoCopyWith<_AlertInfo> get copyWith => __$AlertInfoCopyWithImpl<_AlertInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AlertInfo&&(identical(other.message, message) || other.message == message)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,message,type);

@override
String toString() {
  return 'AlertInfo(message: $message, type: $type)';
}


}

/// @nodoc
abstract mixin class _$AlertInfoCopyWith<$Res> implements $AlertInfoCopyWith<$Res> {
  factory _$AlertInfoCopyWith(_AlertInfo value, $Res Function(_AlertInfo) _then) = __$AlertInfoCopyWithImpl;
@override @useResult
$Res call({
 String message, AlertType type
});




}
/// @nodoc
class __$AlertInfoCopyWithImpl<$Res>
    implements _$AlertInfoCopyWith<$Res> {
  __$AlertInfoCopyWithImpl(this._self, this._then);

  final _AlertInfo _self;
  final $Res Function(_AlertInfo) _then;

/// Create a copy of AlertInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? type = null,}) {
  return _then(_AlertInfo(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as AlertType,
  ));
}


}

// dart format on
