import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:taskflow/core/router/routes.dart';
import 'package:taskflow/core/theming/theme_extensions.dart';
import 'package:taskflow/features/projects/presentation/controller/projects_event.dart';
import 'package:taskflow/features/projects/presentation/controller/projects_state_notifier.dart';
import 'package:taskflow/features/projects/presentation/widgets/project_card.dart';
import 'package:taskflow/features/tasks/presentation/controller/tasks_state_notifier.dart';
import 'package:taskflow/features/tasks/presentation/widgets/task_card.dart';
import 'package:taskflow/gen/assets.gen.dart';
import 'package:taskflow/shared/ui/widgets/main_scaffold.dart';
import 'package:taskflow/shared/ui/widgets/svg_icon.dart';
import 'package:taskflow/translations/locale_keys.g.dart';
import '../controller/home_state_notifier.dart';
import '../widgets/empty_project_box.dart';
import '../widgets/stats_card.dart';

class HomeScreen extends ConsumerWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeStateProvider);

    return MainScaffold(
        title: context.tr(
            LocaleKeys.greeting,
            args: [state.userName]
        ),
        subtitle: context.tr(LocaleKeys.here_is_your_overview),
        body: CustomScrollView(
          slivers: [
            /// --- Stats Row ---
            SliverPadding(
              padding: EdgeInsets.only(top: 18),
              sliver: SliverToBoxAdapter(
                child: Row(
                  spacing: 12,
                  children: [
                    Expanded(
                      child: StatsCard(
                        value: state.taskSummary.totalCount,
                        title: context.tr(LocaleKeys.total),
                        icon: Assets.icons.icTarget,
                        iconColor: context.colors.accentViolet,
                      ),
                    ),
                    Expanded(
                      child: StatsCard(
                        value: state.taskSummary.pendingCount,
                        title: context.tr(LocaleKeys.pending),
                        icon: Assets.icons.icClock,
                        iconColor: context.colors.accentAmber,
                      ),
                    ),
                    Expanded(
                      child: StatsCard(
                        value: state.taskSummary.completedCount,
                        title: context.tr(LocaleKeys.done),
                        icon: Assets.icons.icCircleCheck,
                        iconColor: context.colors.accentEmerald,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            /// --- Overdue Section ---
            if (state.overdueTasks.isNotEmpty)
              SliverToBoxAdapter(
                child: Card.outlined(
                  margin: const EdgeInsets.only(top: 24, bottom: 4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(
                      color: context.colors.destructive.withValues(alpha: 0.2),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsetsGeometry.fromSTEB(
                        16, 16, 16, 8
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          spacing: 8,
                          children: [
                            SvgIcon(
                              Assets.icons.icClock,
                              color: context.colors.destructive,
                              size: 16
                            ),
                            Text(
                              context.tr(
                                LocaleKeys.overdue_tasks,
                                args: [state.overdueTasks.length.toString()],
                              ),
                              style: context.textStyles.labelLarge?.copyWith(
                                  fontSize: 16,
                                  color: context.colors.destructive
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 12),
                        ...state.overdueTasks.map((task) {
                          return TaskCard(
                            task: task,
                            onEvent: (event) {
                              ref.read(tasksStateProvider(task.projectId).notifier)
                                  .handleEvent(event);
                            },
                          );
                        }),
                      ],
                    ),
                  ),
                ),
              ),

            /// --- Projects Header ---
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 22, bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      context.tr(LocaleKeys.your_projects),
                      style: context.textStyles.titleMedium,
                    ),
                    TextButton(
                      onPressed: () {
                        context.go(Routes.projects);
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: Text(
                        context.tr(LocaleKeys.see_all),
                        style: context.textStyles.labelLarge?.copyWith(
                          color: context.colors.accentCoral,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            /// --- Projects List ---
            SliverPadding(
              padding: const EdgeInsets.only(bottom: 24),
              sliver: state.projects.isEmpty
                  ? SliverToBoxAdapter(
                  child: EmptyProjectBox(
                      onCreateProject: () {
                        ref.read(projectsStateProvider.notifier)
                            .handleEvent(const ProjectsEvent.newProject());
                      }
                  )
              )
                  : SliverList.builder(
                itemBuilder: (context, index) {
                  final project = state.projects[index];
                  return ProjectCard(
                    project: project,
                    onEvent: (event) {
                      ref.read(projectsStateProvider.notifier)
                          .handleEvent(event);
                    }
                  );
                },
                itemCount: state.projects.length,
              )
            )
          ]
        )
    );
  }
}