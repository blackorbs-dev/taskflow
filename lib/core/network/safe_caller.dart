import 'dart:async' show TimeoutException;
import 'dart:developer' show log;
import 'dart:io' show SocketException;
import 'package:dio/dio.dart' show DioException, DioExceptionType;
import '../error/error.dart';
import 'response.dart';

Future<Response<T, NetworkError>> safeCall<T>(Future<T> Function() request) async {
  try {
    final response = await request();
    return SuccessResponse(response);
  }
  on DioException catch (e, stacktrace) {
    log('Dio Exception', error: e, stackTrace: stacktrace);

    if(e.type == DioExceptionType.cancel) {
      return const CancelledResponse();
    }

    final data = e.response?.data;
    final message = data is Map ? data['error']['message'] : data is String ? data : null;

    final error = switch (e.type) {
      DioExceptionType.connectionTimeout || DioExceptionType.sendTimeout || DioExceptionType.receiveTimeout =>
          NetworkError.timeout(),

      DioExceptionType.connectionError => NetworkError.internetConnection(),

      DioExceptionType.badResponse => // Server returned an error response (4xx, 5xx)
      message != null && message.trim().isNotEmpty
          ? NetworkError.message(message) : NetworkError.server(),

      _=> // May still be a connectivity issue on some devices
      e.error is SocketException
          ? NetworkError.internetConnection() : NetworkError.unknown()
    };
    return ErrorResponse(error);
  }
  on SocketException catch (e, stacktrace) {
    log('Socket Exception', error: e, stackTrace: stacktrace);
    return ErrorResponse(NetworkError.internetConnection());
  }
  on FormatException catch (e, stacktrace) {
    log('Format Exception', error: e, stackTrace: stacktrace);
    return ErrorResponse(NetworkError.serialization());
  }
  on TimeoutException catch (e, stacktrace) {
    log('Timeout Exception', error: e, stackTrace: stacktrace);
    return ErrorResponse(NetworkError.timeout());
  }
  on CustomException catch (e, stacktrace) {
    log('Custom Exception', error: e, stackTrace: stacktrace);
    return ErrorResponse(NetworkError.message(e.message));
  }
  catch (e, stacktrace) {
    log('Unknown Exception', error: e, stackTrace: stacktrace);
    return ErrorResponse(NetworkError.unknown());
  }
}
