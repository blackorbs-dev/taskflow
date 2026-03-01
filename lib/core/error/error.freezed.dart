// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NetworkError {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NetworkError()';
}


}

/// @nodoc
class $NetworkErrorCopyWith<$Res>  {
$NetworkErrorCopyWith(NetworkError _, $Res Function(NetworkError) __);
}


/// Adds pattern-matching-related methods to [NetworkError].
extension NetworkErrorPatterns on NetworkError {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UnknownError value)?  unknown,TResult Function( SerializationError value)?  serialization,TResult Function( ServerError value)?  server,TResult Function( TimeoutError value)?  timeout,TResult Function( InternetConnectionError value)?  internetConnection,TResult Function( InvalidCredentialsError value)?  invalidCredentials,TResult Function( ErrorMessage value)?  message,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UnknownError() when unknown != null:
return unknown(_that);case SerializationError() when serialization != null:
return serialization(_that);case ServerError() when server != null:
return server(_that);case TimeoutError() when timeout != null:
return timeout(_that);case InternetConnectionError() when internetConnection != null:
return internetConnection(_that);case InvalidCredentialsError() when invalidCredentials != null:
return invalidCredentials(_that);case ErrorMessage() when message != null:
return message(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UnknownError value)  unknown,required TResult Function( SerializationError value)  serialization,required TResult Function( ServerError value)  server,required TResult Function( TimeoutError value)  timeout,required TResult Function( InternetConnectionError value)  internetConnection,required TResult Function( InvalidCredentialsError value)  invalidCredentials,required TResult Function( ErrorMessage value)  message,}){
final _that = this;
switch (_that) {
case UnknownError():
return unknown(_that);case SerializationError():
return serialization(_that);case ServerError():
return server(_that);case TimeoutError():
return timeout(_that);case InternetConnectionError():
return internetConnection(_that);case InvalidCredentialsError():
return invalidCredentials(_that);case ErrorMessage():
return message(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UnknownError value)?  unknown,TResult? Function( SerializationError value)?  serialization,TResult? Function( ServerError value)?  server,TResult? Function( TimeoutError value)?  timeout,TResult? Function( InternetConnectionError value)?  internetConnection,TResult? Function( InvalidCredentialsError value)?  invalidCredentials,TResult? Function( ErrorMessage value)?  message,}){
final _that = this;
switch (_that) {
case UnknownError() when unknown != null:
return unknown(_that);case SerializationError() when serialization != null:
return serialization(_that);case ServerError() when server != null:
return server(_that);case TimeoutError() when timeout != null:
return timeout(_that);case InternetConnectionError() when internetConnection != null:
return internetConnection(_that);case InvalidCredentialsError() when invalidCredentials != null:
return invalidCredentials(_that);case ErrorMessage() when message != null:
return message(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  unknown,TResult Function()?  serialization,TResult Function()?  server,TResult Function()?  timeout,TResult Function()?  internetConnection,TResult Function()?  invalidCredentials,TResult Function( String message)?  message,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UnknownError() when unknown != null:
return unknown();case SerializationError() when serialization != null:
return serialization();case ServerError() when server != null:
return server();case TimeoutError() when timeout != null:
return timeout();case InternetConnectionError() when internetConnection != null:
return internetConnection();case InvalidCredentialsError() when invalidCredentials != null:
return invalidCredentials();case ErrorMessage() when message != null:
return message(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  unknown,required TResult Function()  serialization,required TResult Function()  server,required TResult Function()  timeout,required TResult Function()  internetConnection,required TResult Function()  invalidCredentials,required TResult Function( String message)  message,}) {final _that = this;
switch (_that) {
case UnknownError():
return unknown();case SerializationError():
return serialization();case ServerError():
return server();case TimeoutError():
return timeout();case InternetConnectionError():
return internetConnection();case InvalidCredentialsError():
return invalidCredentials();case ErrorMessage():
return message(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  unknown,TResult? Function()?  serialization,TResult? Function()?  server,TResult? Function()?  timeout,TResult? Function()?  internetConnection,TResult? Function()?  invalidCredentials,TResult? Function( String message)?  message,}) {final _that = this;
switch (_that) {
case UnknownError() when unknown != null:
return unknown();case SerializationError() when serialization != null:
return serialization();case ServerError() when server != null:
return server();case TimeoutError() when timeout != null:
return timeout();case InternetConnectionError() when internetConnection != null:
return internetConnection();case InvalidCredentialsError() when invalidCredentials != null:
return invalidCredentials();case ErrorMessage() when message != null:
return message(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class UnknownError extends NetworkError {
  const UnknownError(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnknownError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NetworkError.unknown()';
}


}




/// @nodoc


class SerializationError extends NetworkError {
  const SerializationError(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SerializationError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NetworkError.serialization()';
}


}




/// @nodoc


class ServerError extends NetworkError {
  const ServerError(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NetworkError.server()';
}


}




/// @nodoc


class TimeoutError extends NetworkError {
  const TimeoutError(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimeoutError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NetworkError.timeout()';
}


}




/// @nodoc


class InternetConnectionError extends NetworkError {
  const InternetConnectionError(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InternetConnectionError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NetworkError.internetConnection()';
}


}




/// @nodoc


class InvalidCredentialsError extends NetworkError {
  const InvalidCredentialsError(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidCredentialsError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NetworkError.invalidCredentials()';
}


}




/// @nodoc


class ErrorMessage extends NetworkError {
  const ErrorMessage(this.message): super._();
  

 final  String message;

/// Create a copy of NetworkError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorMessageCopyWith<ErrorMessage> get copyWith => _$ErrorMessageCopyWithImpl<ErrorMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorMessage&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'NetworkError.message(message: $message)';
}


}

/// @nodoc
abstract mixin class $ErrorMessageCopyWith<$Res> implements $NetworkErrorCopyWith<$Res> {
  factory $ErrorMessageCopyWith(ErrorMessage value, $Res Function(ErrorMessage) _then) = _$ErrorMessageCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ErrorMessageCopyWithImpl<$Res>
    implements $ErrorMessageCopyWith<$Res> {
  _$ErrorMessageCopyWithImpl(this._self, this._then);

  final ErrorMessage _self;
  final $Res Function(ErrorMessage) _then;

/// Create a copy of NetworkError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ErrorMessage(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
