// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'suggested_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SuggestedTask {

 String get title; String? get description; bool get isSelected; TaskPriority get priority; DateTime get dueAt;
/// Create a copy of SuggestedTask
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuggestedTaskCopyWith<SuggestedTask> get copyWith => _$SuggestedTaskCopyWithImpl<SuggestedTask>(this as SuggestedTask, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuggestedTask&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.dueAt, dueAt) || other.dueAt == dueAt));
}


@override
int get hashCode => Object.hash(runtimeType,title,description,isSelected,priority,dueAt);

@override
String toString() {
  return 'SuggestedTask(title: $title, description: $description, isSelected: $isSelected, priority: $priority, dueAt: $dueAt)';
}


}

/// @nodoc
abstract mixin class $SuggestedTaskCopyWith<$Res>  {
  factory $SuggestedTaskCopyWith(SuggestedTask value, $Res Function(SuggestedTask) _then) = _$SuggestedTaskCopyWithImpl;
@useResult
$Res call({
 String title, String? description, bool isSelected, TaskPriority priority, DateTime dueAt
});




}
/// @nodoc
class _$SuggestedTaskCopyWithImpl<$Res>
    implements $SuggestedTaskCopyWith<$Res> {
  _$SuggestedTaskCopyWithImpl(this._self, this._then);

  final SuggestedTask _self;
  final $Res Function(SuggestedTask) _then;

/// Create a copy of SuggestedTask
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = freezed,Object? isSelected = null,Object? priority = null,Object? dueAt = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as TaskPriority,dueAt: null == dueAt ? _self.dueAt : dueAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [SuggestedTask].
extension SuggestedTaskPatterns on SuggestedTask {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SuggestedTask value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SuggestedTask() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SuggestedTask value)  $default,){
final _that = this;
switch (_that) {
case _SuggestedTask():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SuggestedTask value)?  $default,){
final _that = this;
switch (_that) {
case _SuggestedTask() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String? description,  bool isSelected,  TaskPriority priority,  DateTime dueAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SuggestedTask() when $default != null:
return $default(_that.title,_that.description,_that.isSelected,_that.priority,_that.dueAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String? description,  bool isSelected,  TaskPriority priority,  DateTime dueAt)  $default,) {final _that = this;
switch (_that) {
case _SuggestedTask():
return $default(_that.title,_that.description,_that.isSelected,_that.priority,_that.dueAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String? description,  bool isSelected,  TaskPriority priority,  DateTime dueAt)?  $default,) {final _that = this;
switch (_that) {
case _SuggestedTask() when $default != null:
return $default(_that.title,_that.description,_that.isSelected,_that.priority,_that.dueAt);case _:
  return null;

}
}

}

/// @nodoc


class _SuggestedTask implements SuggestedTask {
  const _SuggestedTask({required this.title, this.description, this.isSelected = true, required this.priority, required this.dueAt});
  

@override final  String title;
@override final  String? description;
@override@JsonKey() final  bool isSelected;
@override final  TaskPriority priority;
@override final  DateTime dueAt;

/// Create a copy of SuggestedTask
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuggestedTaskCopyWith<_SuggestedTask> get copyWith => __$SuggestedTaskCopyWithImpl<_SuggestedTask>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SuggestedTask&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.dueAt, dueAt) || other.dueAt == dueAt));
}


@override
int get hashCode => Object.hash(runtimeType,title,description,isSelected,priority,dueAt);

@override
String toString() {
  return 'SuggestedTask(title: $title, description: $description, isSelected: $isSelected, priority: $priority, dueAt: $dueAt)';
}


}

/// @nodoc
abstract mixin class _$SuggestedTaskCopyWith<$Res> implements $SuggestedTaskCopyWith<$Res> {
  factory _$SuggestedTaskCopyWith(_SuggestedTask value, $Res Function(_SuggestedTask) _then) = __$SuggestedTaskCopyWithImpl;
@override @useResult
$Res call({
 String title, String? description, bool isSelected, TaskPriority priority, DateTime dueAt
});




}
/// @nodoc
class __$SuggestedTaskCopyWithImpl<$Res>
    implements _$SuggestedTaskCopyWith<$Res> {
  __$SuggestedTaskCopyWithImpl(this._self, this._then);

  final _SuggestedTask _self;
  final $Res Function(_SuggestedTask) _then;

/// Create a copy of SuggestedTask
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = freezed,Object? isSelected = null,Object? priority = null,Object? dueAt = null,}) {
  return _then(_SuggestedTask(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as TaskPriority,dueAt: null == dueAt ? _self.dueAt : dueAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
