import 'dart:ui';
import 'package:taskflow/core/theming/app_pallete.dart';
import '../domain/models/task.dart';

extension PriorityColor on TaskPriority {
  Color get color => switch(this){
    TaskPriority.low => AppPalette.accentEmerald,
    TaskPriority.medium => AppPalette.accentAmber,
    TaskPriority.high => AppPalette.destructiveLight,
  };
}