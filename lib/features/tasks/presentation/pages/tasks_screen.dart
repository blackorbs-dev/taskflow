import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:taskflow/core/theming/theme_extensions.dart';
import 'package:taskflow/gen/assets.gen.dart';
import 'package:taskflow/shared/ui/widgets/main_scaffold.dart';
import 'package:taskflow/shared/ui/widgets/primary_button.dart';
import 'package:taskflow/shared/ui/widgets/svg_icon.dart';
import 'package:taskflow/translations/locale_keys.g.dart';
import '../../../projects/presentation/controller/projects_state_notifier.dart';
import '../controller/tasks_event.dart';
import '../controller/tasks_state_notifier.dart';
import '../widgets/task_card.dart';
import '../widgets/task_popup.dart';

class TasksScreen extends ConsumerWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final project = ref.watch(projectsStateProvider
        .select((state) => state.selectedProject)
    );
    final taskState = ref.watch(tasksStateProvider(project.id));

    void onEvent(TasksEvent event){
      ref.read(tasksStateProvider(project.id).notifier)
          .handleEvent(event);
    }

    return MainScaffold(
        title: taskState.project?.name ?? project.name,
        subtitle: context.tr(
            LocaleKeys.tasks_remaining,
            args: [(taskState.project?.pendingTasksCount ?? project.pendingTasksCount).toString()]
        ),
        body: Stack(
            children: [
              CustomScrollView(
                  slivers: [
                    SliverPersistentHeader(
                        pinned: true,
                        delegate: _FixedHeaderDelegate(
                            child: Container(
                              alignment: Alignment.centerLeft,
                              color: context.colors.background,
                              child: TextButton.icon(
                                onPressed: (){
                                  context.pop();
                                },
                                label: Text(
                                    context.tr(LocaleKeys.back_to_projects)
                                ),
                                icon: SvgIcon(
                                  Assets.icons.icArrowLeft,
                                  color: context.colors.foreground,
                                ),
                                style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                    textStyle: context.textStyles.labelLarge?.copyWith(
                                        fontSize: 17
                                    ),
                                    foregroundColor: context.colors.foreground,
                                    backgroundColor: context.colors.background
                                ),
                              ),
                            )
                        )
                    ),
                    if (taskState.completedTasks.isEmpty && taskState.pendingTasks.isEmpty)
                      SliverToBoxAdapter(
                          child: Column(
                            children: [
                              Container(
                                  margin: const EdgeInsets.only(top: 42, bottom: 18),
                                  padding: const EdgeInsets.all(18),
                                  decoration: BoxDecoration(
                                    color: context.colors.secondary,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Text(
                                    '✨',
                                    style: context.textStyles.headlineMedium,
                                  )
                              ),
                              Text(
                                context.tr(LocaleKeys.no_task_in_project),
                                style: context.textStyles.bodyMedium?.copyWith(
                                  color: context.colors.mutedForeground,
                                ),
                                textAlign: TextAlign.center,
                              )
                            ],
                          )
                      ),
                    if(taskState.pendingTasks.isNotEmpty)
                      SliverList.builder(
                          itemCount: taskState.pendingTasks.length,
                          itemBuilder: (context, index) {
                            final task = taskState.pendingTasks[index];
                            return TaskCard(
                              task: task,
                              onEvent: onEvent,
                            );
                          }
                      ),
                    if(taskState.completedTasks.isNotEmpty) ...[
                      SliverToBoxAdapter(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 14, bottom: 8),
                            child: Row(
                              spacing: 8,
                              children: [
                                CircleAvatar(
                                  radius: 6,
                                  backgroundColor: context.colors.accentEmerald,
                                ),
                                Text(
                                  context.tr(
                                      LocaleKeys.completed_count,
                                      args: [taskState.completedTasks.length.toString()]
                                  ),
                                  style: context.textStyles.labelLarge?.copyWith(
                                    fontSize: 17,
                                    color: context.colors.mutedForeground,
                                  ),
                                )
                              ],
                            ),
                          )
                      ),
                      SliverPadding(
                        padding: const EdgeInsets.only(bottom: 68),
                        sliver: SliverList.builder(
                            itemCount: taskState.completedTasks.length,
                            itemBuilder: (context, index) {
                              final task = taskState.completedTasks[index];
                              return TaskCard(
                                  task: task,
                                  onEvent: onEvent
                              );
                            }
                        ),
                      )
                    ]
                  ]
              ),
              Positioned(
                bottom: 16,
                right: 0,
                child: PrimaryButton.icon(
                  text: context.tr(LocaleKeys.add_task),
                  icon: Assets.icons.icPlus,
                  width: null,
                  onPressed: (){
                    onEvent(TasksEvent.addNewTask());
                    showDialog(
                        context: context,
                        builder: (_) => Dialog(
                            insetPadding: const EdgeInsets.symmetric(horizontal: 12),
                            child: TaskPopup(projectId: project.id)
                        )
                    );
                  },
                ),
              )
            ]
        )
    );
  }
}

class _FixedHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  _FixedHeaderDelegate({required this.child});

  @override
  double get minExtent => 46;

  @override
  double get maxExtent => 46;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  bool shouldRebuild(covariant _FixedHeaderDelegate oldDelegate) {
    return false;
  }
}