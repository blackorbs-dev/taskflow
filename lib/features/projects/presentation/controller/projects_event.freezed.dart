// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'projects_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProjectsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProjectsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProjectsEvent()';
}


}

/// @nodoc
class $ProjectsEventCopyWith<$Res>  {
$ProjectsEventCopyWith(ProjectsEvent _, $Res Function(ProjectsEvent) __);
}


/// Adds pattern-matching-related methods to [ProjectsEvent].
extension ProjectsEventPatterns on ProjectsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NewProject value)?  newProject,TResult Function( EditProject value)?  editProject,TResult Function( NameChanged value)?  nameChanged,TResult Function( DescriptionChanged value)?  descriptionChanged,TResult Function( ColorChanged value)?  colorChanged,TResult Function( IconChanged value)?  iconChanged,TResult Function( SaveProject value)?  saveProject,TResult Function( DeleteProject value)?  deleteProject,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NewProject() when newProject != null:
return newProject(_that);case EditProject() when editProject != null:
return editProject(_that);case NameChanged() when nameChanged != null:
return nameChanged(_that);case DescriptionChanged() when descriptionChanged != null:
return descriptionChanged(_that);case ColorChanged() when colorChanged != null:
return colorChanged(_that);case IconChanged() when iconChanged != null:
return iconChanged(_that);case SaveProject() when saveProject != null:
return saveProject(_that);case DeleteProject() when deleteProject != null:
return deleteProject(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NewProject value)  newProject,required TResult Function( EditProject value)  editProject,required TResult Function( NameChanged value)  nameChanged,required TResult Function( DescriptionChanged value)  descriptionChanged,required TResult Function( ColorChanged value)  colorChanged,required TResult Function( IconChanged value)  iconChanged,required TResult Function( SaveProject value)  saveProject,required TResult Function( DeleteProject value)  deleteProject,}){
final _that = this;
switch (_that) {
case NewProject():
return newProject(_that);case EditProject():
return editProject(_that);case NameChanged():
return nameChanged(_that);case DescriptionChanged():
return descriptionChanged(_that);case ColorChanged():
return colorChanged(_that);case IconChanged():
return iconChanged(_that);case SaveProject():
return saveProject(_that);case DeleteProject():
return deleteProject(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NewProject value)?  newProject,TResult? Function( EditProject value)?  editProject,TResult? Function( NameChanged value)?  nameChanged,TResult? Function( DescriptionChanged value)?  descriptionChanged,TResult? Function( ColorChanged value)?  colorChanged,TResult? Function( IconChanged value)?  iconChanged,TResult? Function( SaveProject value)?  saveProject,TResult? Function( DeleteProject value)?  deleteProject,}){
final _that = this;
switch (_that) {
case NewProject() when newProject != null:
return newProject(_that);case EditProject() when editProject != null:
return editProject(_that);case NameChanged() when nameChanged != null:
return nameChanged(_that);case DescriptionChanged() when descriptionChanged != null:
return descriptionChanged(_that);case ColorChanged() when colorChanged != null:
return colorChanged(_that);case IconChanged() when iconChanged != null:
return iconChanged(_that);case SaveProject() when saveProject != null:
return saveProject(_that);case DeleteProject() when deleteProject != null:
return deleteProject(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  newProject,TResult Function( Project project)?  editProject,TResult Function( String name)?  nameChanged,TResult Function( String description)?  descriptionChanged,TResult Function( int color)?  colorChanged,TResult Function( String icon)?  iconChanged,TResult Function()?  saveProject,TResult Function( int id)?  deleteProject,required TResult orElse(),}) {final _that = this;
switch (_that) {
case NewProject() when newProject != null:
return newProject();case EditProject() when editProject != null:
return editProject(_that.project);case NameChanged() when nameChanged != null:
return nameChanged(_that.name);case DescriptionChanged() when descriptionChanged != null:
return descriptionChanged(_that.description);case ColorChanged() when colorChanged != null:
return colorChanged(_that.color);case IconChanged() when iconChanged != null:
return iconChanged(_that.icon);case SaveProject() when saveProject != null:
return saveProject();case DeleteProject() when deleteProject != null:
return deleteProject(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  newProject,required TResult Function( Project project)  editProject,required TResult Function( String name)  nameChanged,required TResult Function( String description)  descriptionChanged,required TResult Function( int color)  colorChanged,required TResult Function( String icon)  iconChanged,required TResult Function()  saveProject,required TResult Function( int id)  deleteProject,}) {final _that = this;
switch (_that) {
case NewProject():
return newProject();case EditProject():
return editProject(_that.project);case NameChanged():
return nameChanged(_that.name);case DescriptionChanged():
return descriptionChanged(_that.description);case ColorChanged():
return colorChanged(_that.color);case IconChanged():
return iconChanged(_that.icon);case SaveProject():
return saveProject();case DeleteProject():
return deleteProject(_that.id);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  newProject,TResult? Function( Project project)?  editProject,TResult? Function( String name)?  nameChanged,TResult? Function( String description)?  descriptionChanged,TResult? Function( int color)?  colorChanged,TResult? Function( String icon)?  iconChanged,TResult? Function()?  saveProject,TResult? Function( int id)?  deleteProject,}) {final _that = this;
switch (_that) {
case NewProject() when newProject != null:
return newProject();case EditProject() when editProject != null:
return editProject(_that.project);case NameChanged() when nameChanged != null:
return nameChanged(_that.name);case DescriptionChanged() when descriptionChanged != null:
return descriptionChanged(_that.description);case ColorChanged() when colorChanged != null:
return colorChanged(_that.color);case IconChanged() when iconChanged != null:
return iconChanged(_that.icon);case SaveProject() when saveProject != null:
return saveProject();case DeleteProject() when deleteProject != null:
return deleteProject(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class NewProject implements ProjectsEvent {
  const NewProject();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewProject);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProjectsEvent.newProject()';
}


}




/// @nodoc


class EditProject implements ProjectsEvent {
  const EditProject(this.project);
  

 final  Project project;

/// Create a copy of ProjectsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditProjectCopyWith<EditProject> get copyWith => _$EditProjectCopyWithImpl<EditProject>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditProject&&(identical(other.project, project) || other.project == project));
}


@override
int get hashCode => Object.hash(runtimeType,project);

@override
String toString() {
  return 'ProjectsEvent.editProject(project: $project)';
}


}

/// @nodoc
abstract mixin class $EditProjectCopyWith<$Res> implements $ProjectsEventCopyWith<$Res> {
  factory $EditProjectCopyWith(EditProject value, $Res Function(EditProject) _then) = _$EditProjectCopyWithImpl;
@useResult
$Res call({
 Project project
});


$ProjectCopyWith<$Res> get project;

}
/// @nodoc
class _$EditProjectCopyWithImpl<$Res>
    implements $EditProjectCopyWith<$Res> {
  _$EditProjectCopyWithImpl(this._self, this._then);

  final EditProject _self;
  final $Res Function(EditProject) _then;

/// Create a copy of ProjectsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? project = null,}) {
  return _then(EditProject(
null == project ? _self.project : project // ignore: cast_nullable_to_non_nullable
as Project,
  ));
}

/// Create a copy of ProjectsEvent
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


class NameChanged implements ProjectsEvent {
  const NameChanged(this.name);
  

 final  String name;

/// Create a copy of ProjectsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NameChangedCopyWith<NameChanged> get copyWith => _$NameChangedCopyWithImpl<NameChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NameChanged&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'ProjectsEvent.nameChanged(name: $name)';
}


}

/// @nodoc
abstract mixin class $NameChangedCopyWith<$Res> implements $ProjectsEventCopyWith<$Res> {
  factory $NameChangedCopyWith(NameChanged value, $Res Function(NameChanged) _then) = _$NameChangedCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$NameChangedCopyWithImpl<$Res>
    implements $NameChangedCopyWith<$Res> {
  _$NameChangedCopyWithImpl(this._self, this._then);

  final NameChanged _self;
  final $Res Function(NameChanged) _then;

/// Create a copy of ProjectsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(NameChanged(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DescriptionChanged implements ProjectsEvent {
  const DescriptionChanged(this.description);
  

 final  String description;

/// Create a copy of ProjectsEvent
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
  return 'ProjectsEvent.descriptionChanged(description: $description)';
}


}

/// @nodoc
abstract mixin class $DescriptionChangedCopyWith<$Res> implements $ProjectsEventCopyWith<$Res> {
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

/// Create a copy of ProjectsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? description = null,}) {
  return _then(DescriptionChanged(
null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ColorChanged implements ProjectsEvent {
  const ColorChanged(this.color);
  

 final  int color;

/// Create a copy of ProjectsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ColorChangedCopyWith<ColorChanged> get copyWith => _$ColorChangedCopyWithImpl<ColorChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ColorChanged&&(identical(other.color, color) || other.color == color));
}


@override
int get hashCode => Object.hash(runtimeType,color);

@override
String toString() {
  return 'ProjectsEvent.colorChanged(color: $color)';
}


}

/// @nodoc
abstract mixin class $ColorChangedCopyWith<$Res> implements $ProjectsEventCopyWith<$Res> {
  factory $ColorChangedCopyWith(ColorChanged value, $Res Function(ColorChanged) _then) = _$ColorChangedCopyWithImpl;
@useResult
$Res call({
 int color
});




}
/// @nodoc
class _$ColorChangedCopyWithImpl<$Res>
    implements $ColorChangedCopyWith<$Res> {
  _$ColorChangedCopyWithImpl(this._self, this._then);

  final ColorChanged _self;
  final $Res Function(ColorChanged) _then;

/// Create a copy of ProjectsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? color = null,}) {
  return _then(ColorChanged(
null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class IconChanged implements ProjectsEvent {
  const IconChanged(this.icon);
  

 final  String icon;

/// Create a copy of ProjectsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IconChangedCopyWith<IconChanged> get copyWith => _$IconChangedCopyWithImpl<IconChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IconChanged&&(identical(other.icon, icon) || other.icon == icon));
}


@override
int get hashCode => Object.hash(runtimeType,icon);

@override
String toString() {
  return 'ProjectsEvent.iconChanged(icon: $icon)';
}


}

/// @nodoc
abstract mixin class $IconChangedCopyWith<$Res> implements $ProjectsEventCopyWith<$Res> {
  factory $IconChangedCopyWith(IconChanged value, $Res Function(IconChanged) _then) = _$IconChangedCopyWithImpl;
@useResult
$Res call({
 String icon
});




}
/// @nodoc
class _$IconChangedCopyWithImpl<$Res>
    implements $IconChangedCopyWith<$Res> {
  _$IconChangedCopyWithImpl(this._self, this._then);

  final IconChanged _self;
  final $Res Function(IconChanged) _then;

/// Create a copy of ProjectsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? icon = null,}) {
  return _then(IconChanged(
null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SaveProject implements ProjectsEvent {
  const SaveProject();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveProject);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProjectsEvent.saveProject()';
}


}




/// @nodoc


class DeleteProject implements ProjectsEvent {
  const DeleteProject(this.id);
  

 final  int id;

/// Create a copy of ProjectsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteProjectCopyWith<DeleteProject> get copyWith => _$DeleteProjectCopyWithImpl<DeleteProject>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteProject&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ProjectsEvent.deleteProject(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteProjectCopyWith<$Res> implements $ProjectsEventCopyWith<$Res> {
  factory $DeleteProjectCopyWith(DeleteProject value, $Res Function(DeleteProject) _then) = _$DeleteProjectCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$DeleteProjectCopyWithImpl<$Res>
    implements $DeleteProjectCopyWith<$Res> {
  _$DeleteProjectCopyWithImpl(this._self, this._then);

  final DeleteProject _self;
  final $Res Function(DeleteProject) _then;

/// Create a copy of ProjectsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(DeleteProject(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
