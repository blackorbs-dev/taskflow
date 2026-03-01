import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:taskflow/shared/domain/alert_info.dart';

part 'auth_state.freezed.dart';

@freezed
abstract class AuthState<T> with _$AuthState<T> {
  const factory AuthState({
    @Default(false) bool isLoading,
    @Default(false) bool isAuthenticated,
    AlertInfo? alertInfo,
    required T data,
  }) = _AuthState<T>;
}
