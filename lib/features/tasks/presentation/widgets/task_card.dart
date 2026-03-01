import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:taskflow/core/theming/theme_extensions.dart';
import 'package:taskflow/gen/assets.gen.dart';
import 'package:taskflow/shared/ui/widgets/menu_item.dart';
import 'package:taskflow/shared/ui/widgets/svg_icon.dart';
import 'package:taskflow/translations/locale_keys.g.dart';
import '../../domain/models/task.dart';
import '../controller/tasks_event.dart';
import '../extension.dart';
import 'reschedule_task_popup.dart';
import 'task_popup.dart';

class TaskCard extends StatelessWidget {
  final Task task;
  final void Function(TasksEvent) onEvent;

  const TaskCard({
    super.key,
    required this.task,
    required this.onEvent
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final color = task.priority.color;
    final dueStatus = task.dueStatus;

    return Card(
        margin: const EdgeInsets.only(top: 4, bottom: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: colors.border),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(left: 5),
              padding: const EdgeInsetsGeometry.fromSTEB(
                14, 16, 36, 16,
              ),
              decoration: BoxDecoration(
                color: colors.secondary,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Opacity(
                opacity: task.isCompleted ? 0.60 : 1.0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 12,
                  children: [
                    // Checkbox
                    InkWell(
                      onTap: () => onEvent(TasksEvent.toggleCompleted(task)),
                      borderRadius: BorderRadius.circular(29),
                      child: Container(
                        margin: const EdgeInsets.only(top: 2),
                        width: 26,
                        height: 26,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: task.isCompleted ? colors.accentEmerald : Colors.transparent,
                          border: Border.all(
                            width: 2,
                            color: task.isCompleted
                                ? colors.accentEmerald
                                : context.colors.mutedForeground,
                          ),
                        ),
                        child: task.isCompleted
                            ? SvgIcon(
                            Assets.icons.icCheck,
                            size: 16,
                            color: colors.primaryForeground
                        )
                            : null,
                      ),
                    ),

                    // Content
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            task.title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: context.textStyles.bodyMedium?.copyWith(
                              color: task.isCompleted
                                  ? context.colors.mutedForeground
                                  : context.colors.foreground,
                              decoration: task.isCompleted
                                  ? TextDecoration.lineThrough
                                  : TextDecoration.none,
                            ),
                          ),

                          if ((task.description ?? '').trim().isNotEmpty) ...[
                            const SizedBox(height: 4),
                            Text(
                              task.description!.trim(),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: context.textStyles.bodySmall?.copyWith(
                                color: context.colors.mutedForeground,
                              ),
                            ),
                          ],

                          const SizedBox(height: 14),

                          Wrap(
                            spacing: 10,
                            runSpacing: 10,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              // Priority badge
                              LabelText(
                                text: context.tr(task.priority.name).toLowerCase(),
                                color: color,
                              ),

                              // Due date chip
                              if (task.dueAt != null)
                                _DueChip(
                                    date: task.dueAt!,
                                    dueStatus: dueStatus
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Popup menu button
            Positioned(
              top: 14,
              right: 8,
              child: PopupMenuButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                itemBuilder: (context) => [
                  if (dueStatus == DueStatus.overdue)
                    PopupMenuItem(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (_) => Dialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)
                            ),
                            insetPadding: EdgeInsets.symmetric(horizontal: 16),
                            child: RescheduleTaskPopup(task: task),
                          )
                        );
                      },
                      height: 42,
                      child: MenuItem(
                        text: context.tr(LocaleKeys.reschedule),
                        icon: Assets.icons.icSparkles,
                        color: context.colors.accentViolet,
                      ),
                    ),
                  PopupMenuItem(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (_) => Dialog(
                              insetPadding: const EdgeInsets.symmetric(horizontal: 12),
                              child: TaskPopup(projectId: task.projectId)
                          )
                      );
                      WidgetsBinding.instance.addPostFrameCallback((_){
                        onEvent(TasksEvent.editTask(task));
                      });
                    },
                    height: 42,
                    child: MenuItem(
                      text: context.tr(LocaleKeys.edit),
                      icon: Assets.icons.icPen,
                    ),
                  ),
                  PopupMenuItem(
                    onTap: () => onEvent(TasksEvent.deleteTask(task.id)),
                    child: MenuItem(
                      text: context.tr(LocaleKeys.delete),
                      icon: Assets.icons.icTrash,
                      color: context.colors.destructive,
                    ),
                  ),
                ],
                child: SvgIcon(
                  Assets.icons.icEllipsisVertical,
                  color: context.colors.mutedForeground,
                ),
              ),
            ),
          ],
        )
    );
  }
}

class LabelText extends StatelessWidget {
  final String text;
  final Color color;
  final TextStyle? style;
  final EdgeInsetsGeometry padding;

  const LabelText({
    super.key,
    required this.text,
    required this.color,
    this.style,
    this.padding = const EdgeInsets.symmetric(horizontal: 10, vertical: 4)
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.10),
        borderRadius: BorderRadius.circular(59),
      ),
      child: Padding(
        padding: padding,
        child: Text(
          text,
          style: (style ?? context.textStyles.labelSmall)?.copyWith(
            color: color,
          ),
        ),
      ),
    );
  }
}

class _DueChip extends StatelessWidget {
  final DateTime date;
  final DueStatus? dueStatus;

  const _DueChip({
    required this.date,
    required this.dueStatus
  });

  @override
  Widget build(BuildContext context) {
    final item = _DueDateItem.of(date, dueStatus, context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 4,
      children: [
        SvgIcon(
            item.icon,
            size: 14,
            color: item.color
        ),
        Text(
          item.label,
          style: context.textStyles.labelSmall?.copyWith(
              color: item.color
          ),
        ),
      ],
    );
  }
}

class _DueDateItem{
  final String label;
  final SvgGenImage icon;
  final Color color;

  const _DueDateItem({
    required this.label,
    required this.icon,
    required this.color
  });

  static _DueDateItem of(DateTime date, DueStatus? dueStatus, BuildContext context) {
    return switch (dueStatus) {
      DueStatus.overdue => _DueDateItem(
        label: context.tr(LocaleKeys.overdue),
        icon: Assets.icons.icClock,
        color: context.colors.destructive,
      ),
      DueStatus.dueToday => _DueDateItem(
          label: context.tr(LocaleKeys.due_today),
          icon: Assets.icons.icCalendar,
          color: context.colors.accentCoral
      ),
      DueStatus.dueTomorrow => _DueDateItem(
          label: context.tr(LocaleKeys.due_tomorrow),
          icon: Assets.icons.icCalendar,
          color: context.colors.accentCoral
      ),
      null => _DueDateItem(
          label: DateFormat.MMMd(
              context.locale.toString()
          ).format(date),
          icon: Assets.icons.icCalendar,
          color: context.colors.mutedForeground
      ),
    };
  }
}
