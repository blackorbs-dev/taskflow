import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:taskflow/core/router/routes.dart';
import 'package:taskflow/core/theming/theme_extensions.dart';
import 'package:taskflow/gen/assets.gen.dart';
import 'package:taskflow/shared/ui/widgets/menu_item.dart';
import 'package:taskflow/shared/ui/widgets/svg_icon.dart';
import 'package:taskflow/translations/locale_keys.g.dart';
import '../../domain/project.dart';
import '../controller/projects_event.dart';
import 'project_popup.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.project,
    required this.onEvent
  });

  final Project project;
  final void Function(ProjectsEvent) onEvent;

  @override
  Widget build(BuildContext context) {
    final color = Color(project.color);

    return Card(
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
              color: color.withValues(alpha: 0.3)
          ),
        ),
        color: color.withValues(alpha: 0.1),
        margin: const EdgeInsets.only(bottom: 12),
        child: InkWell(
            onTap: () {
              onEvent(ProjectsEvent.editProject(project));
              context.push(Routes.tasks);
            },
            borderRadius: BorderRadius.circular(14),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        spacing: 12,
                        children: [
                          DecoratedBox(
                              decoration: BoxDecoration(
                                color: color,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Padding(
                                  padding: const EdgeInsets.all(6),
                                  child: Text(
                                      project.icon,
                                      style: context.textStyles.headlineSmall
                                  )
                              )
                          ),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 2,
                              children: [
                                Text(
                                    project.name,
                                    style: context.textStyles.labelLarge?.copyWith(
                                      fontSize: 16
                                    )
                                ),
                                Text(
                                    context.tr(
                                        LocaleKeys.tasks_remaining,
                                        args: [project.pendingTasksCount.toString()]
                                    ),
                                    style: context.textStyles.bodySmall?.copyWith(
                                        color: context.colors.mutedForeground
                                    )
                                )
                              ]
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 4),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                context.tr(
                                  LocaleKeys.completed_count_total,
                                  args: [
                                    project.completedTaskCount.toString(),
                                    project.totalTaskCount.toString()
                                  ],
                                ),
                                style: context.textStyles.bodySmall?.copyWith(
                                    color: context.colors.mutedForeground
                                ),
                              ),
                              Text(
                                '${(project.percentCompleted*100).round()}%',
                                style: context.textStyles.bodySmall?.copyWith(
                                    color: context.colors.mutedForeground
                                ),
                              )
                            ]
                        ),
                      ),
                      LinearProgressIndicator(
                        value: project.percentCompleted,
                        minHeight: 6,
                        color: color,
                        backgroundColor: color.withValues(alpha: 0.14),
                        borderRadius: BorderRadius.circular(22),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 12,
                  right: 10,
                  child: PopupMenuButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    itemBuilder: (context) => [
                      PopupMenuItem(
                          height: 42,
                          onTap: () {
                            onEvent(ProjectsEvent.editProject(project));
                            showDialog(
                                context: context,
                                builder: (_) => const Dialog(
                                    insetPadding: EdgeInsets.symmetric(horizontal: 12),
                                    child: ProjectPopup()
                                )
                            );
                          },
                          child: MenuItem(
                            text: context.tr(LocaleKeys.edit),
                            icon: Assets.icons.icPen,
                          )
                      ),
                      PopupMenuItem(
                          height: 42,
                          onTap: () => onEvent(ProjectsEvent.deleteProject(project.id)),
                          child: MenuItem(
                            text: context.tr(LocaleKeys.delete),
                            icon: Assets.icons.icTrash,
                            color: context.colors.destructive,
                          )
                      )
                    ],
                    child: SvgIcon(
                      Assets.icons.icEllipsisVertical,
                      color: context.colors.mutedForeground,
                    ),
                  ),
                )
              ],
            )
        )
    );
  }
}
