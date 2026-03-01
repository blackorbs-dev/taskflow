import 'package:freezed_annotation/freezed_annotation.dart';

part 'alert_info.freezed.dart';

enum AlertType { success, error, info, warning }

@freezed
abstract class AlertInfo with _$AlertInfo {
  const factory AlertInfo({
    required String message,
    @Default(AlertType.error) AlertType type
  }) = _AlertInfo;
}