// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasks_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TasksEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TasksEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TasksEvent()';
}


}

/// @nodoc
class $TasksEventCopyWith<$Res>  {
$TasksEventCopyWith(TasksEvent _, $Res Function(TasksEvent) __);
}


/// Adds pattern-matching-related methods to [TasksEvent].
extension TasksEventPatterns on TasksEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AddNewTask value)?  addNewTask,TResult Function( EditTask value)?  editTask,TResult Function( TitleChanged value)?  titleChanged,TResult Function( DescriptionChanged value)?  descriptionChanged,TResult Function( PriorityChanged value)?  priorityChanged,TResult Function( DueDateSelected value)?  dueDateSelected,TResult Function( ProjectSelected value)?  projectSelected,TResult Function( SaveTask value)?  saveTask,TResult Function( ToggleCompleted value)?  toggleCompleted,TResult Function( DeleteTask value)?  deleteTask,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AddNewTask() when addNewTask != null:
return addNewTask(_that);case EditTask() when editTask != null:
return editTask(_that);case TitleChanged() when titleChanged != null:
return titleChanged(_that);case DescriptionChanged() when descriptionChanged != null:
return descriptionChanged(_that);case PriorityChanged() when priorityChanged != null:
return priorityChanged(_that);case DueDateSelected() when dueDateSelected != null:
return dueDateSelected(_that);case ProjectSelected() when projectSelected != null:
return projectSelected(_that);case SaveTask() when saveTask != null:
return saveTask(_that);case ToggleCompleted() when toggleCompleted != null:
return toggleCompleted(_that);case DeleteTask() when deleteTask != null:
return deleteTask(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AddNewTask value)  addNewTask,required TResult Function( EditTask value)  editTask,required TResult Function( TitleChanged value)  titleChanged,required TResult Function( DescriptionChanged value)  descriptionChanged,required TResult Function( PriorityChanged value)  priorityChanged,required TResult Function( DueDateSelected value)  dueDateSelected,required TResult Function( ProjectSelected value)  projectSelected,required TResult Function( SaveTask value)  saveTask,required TResult Function( ToggleCompleted value)  toggleCompleted,required TResult Function( DeleteTask value)  deleteTask,}){
final _that = this;
switch (_that) {
case AddNewTask():
return addNewTask(_that);case EditTask():
return editTask(_that);case TitleChanged():
return titleChanged(_that);case DescriptionChanged():
return descriptionChanged(_that);case PriorityChanged():
return priorityChanged(_that);case DueDateSelected():
return dueDateSelected(_that);case ProjectSelected():
return projectSelected(_that);case SaveTask():
return saveTask(_that);case ToggleCompleted():
return toggleCompleted(_that);case DeleteTask():
return deleteTask(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AddNewTask value)?  addNewTask,TResult? Function( EditTask value)?  editTask,TResult? Function( TitleChanged value)?  titleChanged,TResult? Function( DescriptionChanged value)?  descriptionChanged,TResult? Function( PriorityChanged value)?  priorityChanged,TResult? Function( DueDateSelected value)?  dueDateSelected,TResult? Function( ProjectSelected value)?  projectSelected,TResult? Function( SaveTask value)?  saveTask,TResult? Function( ToggleCompleted value)?  toggleCompleted,TResult? Function( DeleteTask value)?  deleteTask,}){
final _that = this;
switch (_that) {
case AddNewTask() when addNewTask != null:
return addNewTask(_that);case EditTask() when editTask != null:
return editTask(_that);case TitleChanged() when titleChanged != null:
return titleChanged(_that);case DescriptionChanged() when descriptionChanged != null:
return descriptionChanged(_that);case PriorityChanged() when priorityChanged != null:
return priorityChanged(_that);case DueDateSelected() when dueDateSelected != null:
return dueDateSelected(_that);case ProjectSelected() when projectSelected != null:
return projectSelected(_that);case SaveTask() when saveTask != null:
return saveTask(_that);case ToggleCompleted() when toggleCompleted != null:
return toggleCompleted(_that);case DeleteTask() when deleteTask != null:
return deleteTask(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  addNewTask,TResult Function( Task task)?  editTask,TResult Function( String title)?  titleChanged,TResult Function( String description)?  descriptionChanged,TResult Function( TaskPriority priority)?  priorityChanged,TResult Function( DateTime dueAt)?  dueDateSelected,TResult Function( Project project)?  projectSelected,TResult Function()?  saveTask,TResult Function( Task task)?  toggleCompleted,TResult Function( int taskId)?  deleteTask,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AddNewTask() when addNewTask != null:
return addNewTask();case EditTask() when editTask != null:
return editTask(_that.task);case TitleChanged() when titleChanged != null:
return titleChanged(_that.title);case DescriptionChanged() when descriptionChanged != null:
return descriptionChanged(_that.description);case PriorityChanged() when priorityChanged != null:
return priorityChanged(_that.priority);case DueDateSelected() when dueDateSelected != null:
return dueDateSelected(_that.dueAt);case ProjectSelected() when projectSelected != null:
return projectSelected(_that.project);case SaveTask() when saveTask != null:
return saveTask();case ToggleCompleted() when toggleCompleted != null:
return toggleCompleted(_that.task);case DeleteTask() when deleteTask != null:
return deleteTask(_that.taskId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  addNewTask,required TResult Function( Task task)  editTask,required TResult Function( String title)  titleChanged,required TResult Function( String description)  descriptionChanged,required TResult Function( TaskPriority priority)  priorityChanged,required TResult Function( DateTime dueAt)  dueDateSelected,required TResult Function( Project project)  projectSelected,required TResult Function()  saveTask,required TResult Function( Task task)  toggleCompleted,required TResult Function( int taskId)  deleteTask,}) {final _that = this;
switch (_that) {
case AddNewTask():
return addNewTask();case EditTask():
return editTask(_that.task);case TitleChanged():
return titleChanged(_that.title);case DescriptionChanged():
return descriptionChanged(_that.description);case PriorityChanged():
return priorityChanged(_that.priority);case DueDateSelected():
return dueDateSelected(_that.dueAt);case ProjectSelected():
return projectSelected(_that.project);case SaveTask():
return saveTask();case ToggleCompleted():
return toggleCompleted(_that.task);case DeleteTask():
return deleteTask(_that.taskId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  addNewTask,TResult? Function( Task task)?  editTask,TResult? Function( String title)?  titleChanged,TResult? Function( String description)?  descriptionChanged,TResult? Function( TaskPriority priority)?  priorityChanged,TResult? Function( DateTime dueAt)?  dueDateSelected,TResult? Function( Project project)?  projectSelected,TResult? Function()?  saveTask,TResult? Function( Task task)?  toggleCompleted,TResult? Function( int taskId)?  deleteTask,}) {final _that = this;
switch (_that) {
case AddNewTask() when addNewTask != null:
return addNewTask();case EditTask() when editTask != null:
return editTask(_that.task);case TitleChanged() when titleChanged != null:
return titleChanged(_that.title);case DescriptionChanged() when descriptionChanged != null:
return descriptionChanged(_that.description);case PriorityChanged() when priorityChanged != null:
return priorityChanged(_that.priority);case DueDateSelected() when dueDateSelected != null:
return dueDateSelected(_that.dueAt);case ProjectSelected() when projectSelected != null:
return projectSelected(_that.project);case SaveTask() when saveTask != null:
return saveTask();case ToggleCompleted() when toggleCompleted != null:
return toggleCompleted(_that.task);case DeleteTask() when deleteTask != null:
return deleteTask(_that.taskId);case _:
  return null;

}
}

}

/// @nodoc


class AddNewTask implements TasksEvent {
  const AddNewTask();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddNewTask);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TasksEvent.addNewTask()';
}


}




/// @nodoc


class EditTask implements TasksEvent {
  const EditTask(this.task);
  

 final  Task task;

/// Create a copy of TasksEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditTaskCopyWith<EditTask> get copyWith => _$EditTaskCopyWithImpl<EditTask>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditTask&&(identical(other.task, task) || other.task == task));
}


@override
int get hashCode => Object.hash(runtimeType,task);

@override
String toString() {
  return 'TasksEvent.editTask(task: $task)';
}


}

/// @nodoc
abstract mixin class $EditTaskCopyWith<$Res> implements $TasksEventCopyWith<$Res> {
  factory $EditTaskCopyWith(EditTask value, $Res Function(EditTask) _then) = _$EditTaskCopyWithImpl;
@useResult
$Res call({
 Task task
});


$TaskCopyWith<$Res> get task;

}
/// @nodoc
class _$EditTaskCopyWithImpl<$Res>
    implements $EditTaskCopyWith<$Res> {
  _$EditTaskCopyWithImpl(this._self, this._then);

  final EditTask _self;
  final $Res Function(EditTask) _then;

/// Create a copy of TasksEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? task = null,}) {
  return _then(EditTask(
null == task ? _self.task : task // ignore: cast_nullable_to_non_nullable
as Task,
  ));
}

/// Create a copy of TasksEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TaskCopyWith<$Res> get task {
  
  return $TaskCopyWith<$Res>(_self.task, (value) {
    return _then(_self.copyWith(task: value));
  });
}
}

/// @nodoc


class TitleChanged implements TasksEvent {
  const TitleChanged(this.title);
  

 final  String title;

/// Create a copy of TasksEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TitleChangedCopyWith<TitleChanged> get copyWith => _$TitleChangedCopyWithImpl<TitleChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TitleChanged&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode => Object.hash(runtimeType,title);

@override
String toString() {
  return 'TasksEvent.titleChanged(title: $title)';
}


}

/// @nodoc
abstract mixin class $TitleChangedCopyWith<$Res> implements $TasksEventCopyWith<$Res> {
  factory $TitleChangedCopyWith(TitleChanged value, $Res Function(TitleChanged) _then) = _$TitleChangedCopyWithImpl;
@useResult
$Res call({
 String title
});




}
/// @nodoc
class _$TitleChangedCopyWithImpl<$Res>
    implements $TitleChangedCopyWith<$Res> {
  _$TitleChangedCopyWithImpl(this._self, this._then);

  final TitleChanged _self;
  final $Res Function(TitleChanged) _then;

/// Create a copy of TasksEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? title = null,}) {
  return _then(TitleChanged(
null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DescriptionChanged implements TasksEvent {
  const DescriptionChanged(this.description);
  

 final  String description;

/// Create a copy of TasksEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DescriptionChangedCopyWith<DescriptionChanged> get copyWith => _$DescriptionChangedCopyWithImpl<DescriptionChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DescriptionChanged&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,description);

@override
String toString() {
  return 'TasksEvent.descriptionChanged(description: $description)';
}


}

/// @nodoc
abstract mixin class $DescriptionChangedCopyWith<$Res> implements $TasksEventCopyWith<$Res> {
  factory $DescriptionChangedCopyWith(DescriptionChanged value, $Res Function(DescriptionChanged) _then) = _$DescriptionChangedCopyWithImpl;
@useResult
$Res call({
 String description
});




}
/// @nodoc
class _$DescriptionChangedCopyWithImpl<$Res>
    implements $DescriptionChangedCopyWith<$Res> {
  _$DescriptionChangedCopyWithImpl(this._self, this._then);

  final DescriptionChanged _self;
  final $Res Function(DescriptionChanged) _then;

/// Create a copy of TasksEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? description = null,}) {
  return _then(DescriptionChanged(
null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PriorityChanged implements TasksEvent {
  const PriorityChanged(this.priority);
  

 final  TaskPriority priority;

/// Create a copy of TasksEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PriorityChangedCopyWith<PriorityChanged> get copyWith => _$PriorityChangedCopyWithImpl<PriorityChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PriorityChanged&&(identical(other.priority, priority) || other.priority == priority));
}


@override
int get hashCode => Object.hash(runtimeType,priority);

@override
String toString() {
  return 'TasksEvent.priorityChanged(priority: $priority)';
}


}

/// @nodoc
abstract mixin class $PriorityChangedCopyWith<$Res> implements $TasksEventCopyWith<$Res> {
  factory $PriorityChangedCopyWith(PriorityChanged value, $Res Function(PriorityChanged) _then) = _$PriorityChangedCopyWithImpl;
@useResult
$Res call({
 TaskPriority priority
});




}
/// @nodoc
class _$PriorityChangedCopyWithImpl<$Res>
    implements $PriorityChangedCopyWith<$Res> {
  _$PriorityChangedCopyWithImpl(this._self, this._then);

  final PriorityChanged _self;
  final $Res Function(PriorityChanged) _then;

/// Create a copy of TasksEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? priority = null,}) {
  return _then(PriorityChanged(
null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as TaskPriority,
  ));
}


}

/// @nodoc


class DueDateSelected implements TasksEvent {
  const DueDateSelected(this.dueAt);
  

 final  DateTime dueAt;

/// Create a copy of TasksEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DueDateSelectedCopyWith<DueDateSelected> get copyWith => _$DueDateSelectedCopyWithImpl<DueDateSelected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DueDateSelected&&(identical(other.dueAt, dueAt) || other.dueAt == dueAt));
}


@override
int get hashCode => Object.hash(runtimeType,dueAt);

@override
String toString() {
  return 'TasksEvent.dueDateSelected(dueAt: $dueAt)';
}


}

/// @nodoc
abstract mixin class $DueDateSelectedCopyWith<$Res> implements $TasksEventCopyWith<$Res> {
  factory $DueDateSelectedCopyWith(DueDateSelected value, $Res Function(DueDateSelected) _then) = _$DueDateSelectedCopyWithImpl;
@useResult
$Res call({
 DateTime dueAt
});




}
/// @nodoc
class _$DueDateSelectedCopyWithImpl<$Res>
    implements $DueDateSelectedCopyWith<$Res> {
  _$DueDateSelectedCopyWithImpl(this._self, this._then);

  final DueDateSelected _self;
  final $Res Function(DueDateSelected) _then;

/// Create a copy of TasksEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? dueAt = null,}) {
  return _then(DueDateSelected(
null == dueAt ? _self.dueAt : dueAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc


class ProjectSelected implements TasksEvent {
  const ProjectSelected(this.project);
  

 final  Project project;

/// Create a copy of TasksEvent
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
  return 'TasksEvent.projectSelected(project: $project)';
}


}

/// @nodoc
abstract mixin class $ProjectSelectedCopyWith<$Res> implements $TasksEventCopyWith<$Res> {
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

/// Create a copy of TasksEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? project = null,}) {
  return _then(ProjectSelected(
null == project ? _self.project : project // ignore: cast_nullable_to_non_nullable
as Project,
  ));
}

/// Create a copy of TasksEvent
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


class SaveTask implements TasksEvent {
  const SaveTask();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveTask);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TasksEvent.saveTask()';
}


}




/// @nodoc


class ToggleCompleted implements TasksEvent {
  const ToggleCompleted(this.task);
  

 final  Task task;

/// Create a copy of TasksEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToggleCompletedCopyWith<ToggleCompleted> get copyWith => _$ToggleCompletedCopyWithImpl<ToggleCompleted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToggleCompleted&&(identical(other.task, task) || other.task == task));
}


@override
int get hashCode => Object.hash(runtimeType,task);

@override
String toString() {
  return 'TasksEvent.toggleCompleted(task: $task)';
}


}

/// @nodoc
abstract mixin class $ToggleCompletedCopyWith<$Res> implements $TasksEventCopyWith<$Res> {
  factory $ToggleCompletedCopyWith(ToggleCompleted value, $Res Function(ToggleCompleted) _then) = _$ToggleCompletedCopyWithImpl;
@useResult
$Res call({
 Task task
});


$TaskCopyWith<$Res> get task;

}
/// @nodoc
class _$ToggleCompletedCopyWithImpl<$Res>
    implements $ToggleCompletedCopyWith<$Res> {
  _$ToggleCompletedCopyWithImpl(this._self, this._then);

  final ToggleCompleted _self;
  final $Res Function(ToggleCompleted) _then;

/// Create a copy of TasksEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? task = null,}) {
  return _then(ToggleCompleted(
null == task ? _self.task : task // ignore: cast_nullable_to_non_nullable
as Task,
  ));
}

/// Create a copy of TasksEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TaskCopyWith<$Res> get task {
  
  return $TaskCopyWith<$Res>(_self.task, (value) {
    return _then(_self.copyWith(task: value));
  });
}
}

/// @nodoc


class DeleteTask implements TasksEvent {
  const DeleteTask(this.taskId);
  

 final  int taskId;

/// Create a copy of TasksEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteTaskCopyWith<DeleteTask> get copyWith => _$DeleteTaskCopyWithImpl<DeleteTask>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteTask&&(identical(other.taskId, taskId) || other.taskId == taskId));
}


@override
int get hashCode => Object.hash(runtimeType,taskId);

@override
String toString() {
  return 'TasksEvent.deleteTask(taskId: $taskId)';
}


}

/// @nodoc
abstract mixin class $DeleteTaskCopyWith<$Res> implements $TasksEventCopyWith<$Res> {
  factory $DeleteTaskCopyWith(DeleteTask value, $Res Function(DeleteTask) _then) = _$DeleteTaskCopyWithImpl;
@useResult
$Res call({
 int taskId
});




}
/// @nodoc
class _$DeleteTaskCopyWithImpl<$Res>
    implements $DeleteTaskCopyWith<$Res> {
  _$DeleteTaskCopyWithImpl(this._self, this._then);

  final DeleteTask _self;
  final $Res Function(DeleteTask) _then;

/// Create a copy of TasksEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? taskId = null,}) {
  return _then(DeleteTask(
null == taskId ? _self.taskId : taskId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
