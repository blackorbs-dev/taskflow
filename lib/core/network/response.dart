import 'package:freezed_annotation/freezed_annotation.dart';
import '../error/error.dart';

part 'response.freezed.dart';

@freezed
sealed class Response<D, E extends Error> with _$Response<D, E> {
  const Response._();

  const factory Response.success(D data) = SuccessResponse<D, E>;
  const factory Response.error(E error) = ErrorResponse<D, E>;
  const factory Response.cancelled() = CancelledResponse<D, E>;
}

extension ResponseX<T, E extends Error> on Response<T, E> {
  Response<R, E> mapData<R>(R Function(T data) mapper) => when(
    success: (data) => Response<R, E>.success(mapper(data)),
    error: (error) => Response<R, E>.error(error),
    cancelled: () => Response<R, E>.cancelled(),
  );

  Response<T, E> onSuccess(void Function(T data) action) {
    whenOrNull(success: action);
    return this;
  }

  Response<T, E> onError(void Function(E error) action) {
    whenOrNull(error: action);
    return this;
  }

  Response<T, E> onCancel(void Function() action) {
    whenOrNull(cancelled: action);
    return this;
  }
}
