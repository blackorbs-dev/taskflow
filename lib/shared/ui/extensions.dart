import 'package:flutter_riverpod/flutter_riverpod.dart';

extension AsyncX<T> on AsyncValue<T> {
  AsyncValue<T> copy(
    T Function(T oldValue) value,
  ) {
    return whenData((state) => value(state));
  }
}