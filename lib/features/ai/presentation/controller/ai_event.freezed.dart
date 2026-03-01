// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AIEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AIEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AIEvent()';
}


}

/// @nodoc
class $AIEventCopyWith<$Res>  {
$AIEventCopyWith(AIEvent _, $Res Function(AIEvent) __);
}


/// Adds pattern-matching-related methods to [AIEvent].
extension AIEventPatterns on AIEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GenerateTasks value)?  generateTasks,TResult Function( PromptChanged value)?  promptChanged,TResult Function( TaskSelected value)?  taskSelected,TResult Function( ProjectSelected value)?  projectSelected,TResult Function( ImportTasks value)?  importTasks,TResult Function( AlertShown value)?  alertShown,TResult Function( ResetTaskGeneratedFlag value)?  resetTaskGeneratedFlag,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GenerateTasks() when generateTasks != null:
return generateTasks(_that);case PromptChanged() when promptChanged != null:
return promptChanged(_that);case TaskSelected() when taskSelected != null:
return taskSelected(_that);case ProjectSelected() when projectSelected != null:
return projectSelected(_that);case ImportTasks() when importTasks != null:
return importTasks(_that);case AlertShown() when alertShown != null:
return alertShown(_that);case ResetTaskGeneratedFlag() when resetTaskGeneratedFlag != null:
return resetTaskGeneratedFlag(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GenerateTasks value)  generateTasks,required TResult Function( PromptChanged value)  promptChanged,required TResult Function( TaskSelected value)  taskSelected,required TResult Function( ProjectSelected value)  projectSelected,required TResult Function( ImportTasks value)  importTasks,required TResult Function( AlertShown value)  alertShown,required TResult Function( ResetTaskGeneratedFlag value)  resetTaskGeneratedFlag,}){
final _that = this;
switch (_that) {
case GenerateTasks():
return generateTasks(_that);case PromptChanged():
return promptChanged(_that);case TaskSelected():
return taskSelected(_that);case ProjectSelected():
return projectSelected(_that);case ImportTasks():
return importTasks(_that);case AlertShown():
return alertShown(_that);case ResetTaskGeneratedFlag():
return resetTaskGeneratedFlag(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GenerateTasks value)?  generateTasks,TResult? Function( PromptChanged value)?  promptChanged,TResult? Function( TaskSelected value)?  taskSelected,TResult? Function( ProjectSelected value)?  projectSelected,TResult? Function( ImportTasks value)?  importTasks,TResult? Function( AlertShown value)?  alertShown,TResult? Function( ResetTaskGeneratedFlag value)?  resetTaskGeneratedFlag,}){
final _that = this;
switch (_that) {
case GenerateTasks() when generateTasks != null:
return generateTasks(_that);case PromptChanged() when promptChanged != null:
return promptChanged(_that);case TaskSelected() when taskSelected != null:
return taskSelected(_that);case ProjectSelected() when projectSelected != null:
return projectSelected(_that);case ImportTasks() when importTasks != null:
return importTasks(_that);case AlertShown() when alertShown != null:
return alertShown(_that);case ResetTaskGeneratedFlag() when resetTaskGeneratedFlag != null:
return resetTaskGeneratedFlag(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  generateTasks,TResult Function( String prompt)?  promptChanged,TResult Function( int index)?  taskSelected,TResult Function( Project project)?  projectSelected,TResult Function()?  importTasks,TResult Function()?  alertShown,TResult Function()?  resetTaskGeneratedFlag,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GenerateTasks() when generateTasks != null:
return generateTasks();case PromptChanged() when promptChanged != null:
return promptChanged(_that.prompt);case TaskSelected() when taskSelected != null:
return taskSelected(_that.index);case ProjectSelected() when projectSelected != null:
return projectSelected(_that.project);case ImportTasks() when importTasks != null:
return importTasks();case AlertShown() when alertShown != null:
return alertShown();case ResetTaskGeneratedFlag() when resetTaskGeneratedFlag != null:
return resetTaskGeneratedFlag();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  generateTasks,required TResult Function( String prompt)  promptChanged,required TResult Function( int index)  taskSelected,required TResult Function( Project project)  projectSelected,required TResult Function()  importTasks,required TResult Function()  alertShown,required TResult Function()  resetTaskGeneratedFlag,}) {final _that = this;
switch (_that) {
case GenerateTasks():
return generateTasks();case PromptChanged():
return promptChanged(_that.prompt);case TaskSelected():
return taskSelected(_that.index);case ProjectSelected():
return projectSelected(_that.project);case ImportTasks():
return importTasks();case AlertShown():
return alertShown();case ResetTaskGeneratedFlag():
return resetTaskGeneratedFlag();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  generateTasks,TResult? Function( String prompt)?  promptChanged,TResult? Function( int index)?  taskSelected,TResult? Function( Project project)?  projectSelected,TResult? Function()?  importTasks,TResult? Function()?  alertShown,TResult? Function()?  resetTaskGeneratedFlag,}) {final _that = this;
switch (_that) {
case GenerateTasks() when generateTasks != null:
return generateTasks();case PromptChanged() when promptChanged != null:
return promptChanged(_that.prompt);case TaskSelected() when taskSelected != null:
return taskSelected(_that.index);case ProjectSelected() when projectSelected != null:
return projectSelected(_that.project);case ImportTasks() when importTasks != null:
return importTasks();case AlertShown() when alertShown != null:
return alertShown();case ResetTaskGeneratedFlag() when resetTaskGeneratedFlag != null:
return resetTaskGeneratedFlag();case _:
  return null;

}
}

}

/// @nodoc


class GenerateTasks implements AIEvent {
  const GenerateTasks();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenerateTasks);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AIEvent.generateTasks()';
}


}




/// @nodoc


class PromptChanged implements AIEvent {
  const PromptChanged(this.prompt);
  

 final  String prompt;

/// Create a copy of AIEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromptChangedCopyWith<PromptChanged> get copyWith => _$PromptChangedCopyWithImpl<PromptChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromptChanged&&(identical(other.prompt, prompt) || other.prompt == prompt));
}


@override
int get hashCode => Object.hash(runtimeType,prompt);

@override
String toString() {
  return 'AIEvent.promptChanged(prompt: $prompt)';
}


}

/// @nodoc
abstract mixin class $PromptChangedCopyWith<$Res> implements $AIEventCopyWith<$Res> {
  factory $PromptChangedCopyWith(PromptChanged value, $Res Function(PromptChanged) _then) = _$PromptChangedCopyWithImpl;
@useResult
$Res call({
 String prompt
});




}
/// @nodoc
class _$PromptChangedCopyWithImpl<$Res>
    implements $PromptChangedCopyWith<$Res> {
  _$PromptChangedCopyWithImpl(this._self, this._then);

  final PromptChanged _self;
  final $Res Function(PromptChanged) _then;

/// Create a copy of AIEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? prompt = null,}) {
  return _then(PromptChanged(
null == prompt ? _self.prompt : prompt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class TaskSelected implements AIEvent {
  const TaskSelected(this.index);
  

 final  int index;

/// Create a copy of AIEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskSelectedCopyWith<TaskSelected> get copyWith => _$TaskSelectedCopyWithImpl<TaskSelected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskSelected&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'AIEvent.taskSelected(index: $index)';
}


}

/// @nodoc
abstract mixin class $TaskSelectedCopyWith<$Res> implements $AIEventCopyWith<$Res> {
  factory $TaskSelectedCopyWith(TaskSelected value, $Res Function(TaskSelected) _then) = _$TaskSelectedCopyWithImpl;
@useResult
$Res call({
 int index
});




}
/// @nodoc
class _$TaskSelectedCopyWithImpl<$Res>
    implements $TaskSelectedCopyWith<$Res> {
  _$TaskSelectedCopyWithImpl(this._self, this._then);

  final TaskSelected _self;
  final $Res Function(TaskSelected) _then;

/// Create a copy of AIEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(TaskSelected(
null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class ProjectSelected implements AIEvent {
  const ProjectSelected(this.project);
  

 final  Project project;

/// Create a copy of AIEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProjectSelectedCopyWith<ProjectSelected> get copyWith => _$ProjectSelectedCopyWithImpl<ProjectSelected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProjectSelected&&(identical(other.project, project) || other.project == project));
}


@override
int get hashCode => Object.hash(runtimeType,project);

@override
String toString() {
  return 'AIEvent.projectSelected(project: $project)';
}


}

/// @nodoc
abstract mixin class $ProjectSelectedCopyWith<$Res> implements $AIEventCopyWith<$Res> {
  factory $ProjectSelectedCopyWith(ProjectSelected value, $Res Function(ProjectSelected) _then) = _$ProjectSelectedCopyWithImpl;
@useResult
$Res call({
 Project project
});


$ProjectCopyWith<$Res> get project;

}
/// @nodoc
class _$ProjectSelectedCopyWithImpl<$Res>
    implements $ProjectSelectedCopyWith<$Res> {
  _$ProjectSelectedCopyWithImpl(this._self, this._then);

  final ProjectSelected _self;
  final $Res Function(ProjectSelected) _then;

/// Create a copy of AIEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? project = null,}) {
  return _then(ProjectSelected(
null == project ? _self.project : project // ignore: cast_nullable_to_non_nullable
as Project,
  ));
}

/// Create a copy of AIEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProjectCopyWith<$Res> get project {
  
  return $ProjectCopyWith<$Res>(_self.project, (value) {
    return _then(_self.copyWith(project: value));
  });
}
}

/// @nodoc


class ImportTasks implements AIEvent {
  const ImportTasks();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImportTasks);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AIEvent.importTasks()';
}


}




/// @nodoc


class AlertShown implements AIEvent {
  const AlertShown();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AlertShown);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AIEvent.alertShown()';
}


}




/// @nodoc


class ResetTaskGeneratedFlag implements AIEvent {
  const ResetTaskGeneratedFlag();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetTaskGeneratedFlag);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AIEvent.resetTaskGeneratedFlag()';
}


}




// dart format on
