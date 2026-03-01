import 'package:freezed_annotation/freezed_annotation.dart';

part 'error.freezed.dart';

abstract class Error {}

@freezed
sealed class NetworkError with _$NetworkError implements Error {
  const NetworkError._();

  const factory NetworkError.unknown() = UnknownError;
  const factory NetworkError.serialization() = SerializationError;
  const factory NetworkError.server() = ServerError;
  const factory NetworkError.timeout() = TimeoutError;
  const factory NetworkError.internetConnection() = InternetConnectionError;
  const factory NetworkError.invalidCredentials() = InvalidCredentialsError;
  const factory NetworkError.message(String message) = ErrorMessage;
}

class CustomException implements Exception {
  final String message;
  const CustomException(this.message);

  @override
  String toString() => 'CustomException: $message';
}
