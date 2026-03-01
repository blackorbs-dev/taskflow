// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reschedule_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RescheduleInfo {

 DateTime get dueAt; String get description;
/// Create a copy of RescheduleInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RescheduleInfoCopyWith<RescheduleInfo> get copyWith => _$RescheduleInfoCopyWithImpl<RescheduleInfo>(this as RescheduleInfo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RescheduleInfo&&(identical(other.dueAt, dueAt) || other.dueAt == dueAt)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,dueAt,description);

@override
String toString() {
  return 'RescheduleInfo(dueAt: $dueAt, description: $description)';
}


}

/// @nodoc
abstract mixin class $RescheduleInfoCopyWith<$Res>  {
  factory $RescheduleInfoCopyWith(RescheduleInfo value, $Res Function(RescheduleInfo) _then) = _$RescheduleInfoCopyWithImpl;
@useResult
$Res call({
 DateTime dueAt, String description
});




}
/// @nodoc
class _$RescheduleInfoCopyWithImpl<$Res>
    implements $RescheduleInfoCopyWith<$Res> {
  _$RescheduleInfoCopyWithImpl(this._self, this._then);

  final RescheduleInfo _self;
  final $Res Function(RescheduleInfo) _then;

/// Create a copy of RescheduleInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dueAt = null,Object? description = null,}) {
  return _then(_self.copyWith(
dueAt: null == dueAt ? _self.dueAt : dueAt // ignore: cast_nullable_to_non_nullable
as DateTime,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RescheduleInfo].
extension RescheduleInfoPatterns on RescheduleInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RescheduleInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RescheduleInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RescheduleInfo value)  $default,){
final _that = this;
switch (_that) {
case _RescheduleInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RescheduleInfo value)?  $default,){
final _that = this;
switch (_that) {
case _RescheduleInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime dueAt,  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RescheduleInfo() when $default != null:
return $default(_that.dueAt,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime dueAt,  String description)  $default,) {final _that = this;
switch (_that) {
case _RescheduleInfo():
return $default(_that.dueAt,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime dueAt,  String description)?  $default,) {final _that = this;
switch (_that) {
case _RescheduleInfo() when $default != null:
return $default(_that.dueAt,_that.description);case _:
  return null;

}
}

}

/// @nodoc


class _RescheduleInfo implements RescheduleInfo {
  const _RescheduleInfo({required this.dueAt, required this.description});
  

@override final  DateTime dueAt;
@override final  String description;

/// Create a copy of RescheduleInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RescheduleInfoCopyWith<_RescheduleInfo> get copyWith => __$RescheduleInfoCopyWithImpl<_RescheduleInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RescheduleInfo&&(identical(other.dueAt, dueAt) || other.dueAt == dueAt)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,dueAt,description);

@override
String toString() {
  return 'RescheduleInfo(dueAt: $dueAt, description: $description)';
}


}

/// @nodoc
abstract mixin class _$RescheduleInfoCopyWith<$Res> implements $RescheduleInfoCopyWith<$Res> {
  factory _$RescheduleInfoCopyWith(_RescheduleInfo value, $Res Function(_RescheduleInfo) _then) = __$RescheduleInfoCopyWithImpl;
@override @useResult
$Res call({
 DateTime dueAt, String description
});




}
/// @nodoc
class __$RescheduleInfoCopyWithImpl<$Res>
    implements _$RescheduleInfoCopyWith<$Res> {
  __$RescheduleInfoCopyWithImpl(this._self, this._then);

  final _RescheduleInfo _self;
  final $Res Function(_RescheduleInfo) _then;

/// Create a copy of RescheduleInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dueAt = null,Object? description = null,}) {
  return _then(_RescheduleInfo(
dueAt: null == dueAt ? _self.dueAt : dueAt // ignore: cast_nullable_to_non_nullable
as DateTime,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
