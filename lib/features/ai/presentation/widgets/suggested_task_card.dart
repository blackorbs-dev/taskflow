import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:taskflow/core/theming/theme_extensions.dart';
import 'package:taskflow/features/tasks/presentation/extension.dart';
import 'package:taskflow/features/tasks/presentation/widgets/task_card.dart';
import 'package:taskflow/gen/assets.gen.dart';
import 'package:taskflow/shared/ui/widgets/svg_icon.dart';
import '../../domain/models/suggested_task.dart';

class SuggestedTaskCard extends StatelessWidget {
  final SuggestedTask task;
  final VoidCallback onTap;

  const SuggestedTaskCard({
    super.key,
    required this.task,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Card(
        margin: const EdgeInsets.only(top: 4, bottom: 8),
        color: colors.accentViolet.withValues(alpha: 0.1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: colors.accentViolet),
        ),
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 14, vertical: 16,
            ),
            child: Row(
                spacing: 12,
                children: [
                  Container(
                    width: 26,
                    height: 26,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: task.isSelected ? colors.accentViolet : Colors.transparent,
                      border: Border.all(
                        width: 2,
                        color: task.isSelected
                            ? colors.accentViolet
                            : colors.mutedForeground,
                      ),
                    ),
                    child: task.isSelected
                        ? SvgIcon(
                        Assets.icons.icCheck,
                        size: 16,
                        color: colors.primaryForeground
                    ) : null,
                  ),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          task.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: context.textStyles.bodyMedium,
                        ),

                        if ((task.description ?? '').trim().isNotEmpty) ...[
                          const SizedBox(height: 4),
                          Text(
                            task.description!.trim(),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: context.textStyles.bodySmall?.copyWith(
                              color: colors.mutedForeground,
                            ),
                          ),
                        ],

                        const SizedBox(height: 12),

                        Row(
                          spacing: 10,
                          children: [
                            // Priority badge
                            LabelText(
                              text: context.tr(task.priority.name).toLowerCase(),
                              color: task.priority.color,
                            ),

                            Text(
                              DateFormat('yyyy-MM-dd', context.locale.toString()).format(task.dueAt) ,
                              style: context.textStyles.bodySmall,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ]
            ),
          ),
        )
    );
  }
}
