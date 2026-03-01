import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taskflow/core/error/error.dart';
import 'package:taskflow/core/error/extensions.dart';
import 'package:taskflow/core/theming/theme_extensions.dart';
import 'package:taskflow/features/tasks/domain/models/task.dart';
import 'package:taskflow/gen/assets.gen.dart';
import 'package:taskflow/shared/ui/widgets/loading_icon.dart';
import 'package:taskflow/shared/ui/widgets/popup_container.dart';
import 'package:taskflow/shared/ui/widgets/svg_icon.dart';
import 'package:taskflow/translations/locale_keys.g.dart';
import '../../domain/models/reschedule_info.dart';
import '../controller/reschedule_task_notifier.dart';

class RescheduleTaskPopup extends ConsumerWidget {
  const RescheduleTaskPopup({super.key, required this.task});

  final Task task;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rescheduleInfoAsync = ref.watch(rescheduleTaskProvider(task));

    void refresh() {
      ref.invalidate(rescheduleTaskProvider(task), asReload: true);
      ref.read(rescheduleTaskProvider(task));
    }

    return PopupContainer(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            spacing: 10,
            children: [
              SvgIcon(
                Assets.icons.icSparkles,
                size: 20,
                color: context.colors.accentViolet,
              ),
              Text(
                context.tr(LocaleKeys.smart_reschedule),
                style: context.textStyles.titleLarge,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsetsGeometry.fromSTEB(
                12, 10, 12, 18
            ),
            child: Text(
              context.tr(LocaleKeys.ai_suggested_new_time),
              style: context.textStyles.bodyMedium?.copyWith(
                color: context.colors.mutedForeground
              ),
            ),
          ),
          _TaskCard(task: task),
          rescheduleInfoAsync.when(
            loading: () => const _LoadingBox(),
            error: (error,_) => _ErrorBox(error: error, refresh: refresh),
            data: (rescheduleInfo){
              return _RescheduleInfoBox(
                  rescheduleInfo: rescheduleInfo,
                  refresh: refresh,
                  accept: (){
                    ref.read(rescheduleTaskProvider(task).notifier).updateTask();
                    Navigator.pop(context);
                  }
              );
            },
          )
        ]
      )
    );
  }
}

class _TaskCard extends StatelessWidget {
  final Task task;

  const _TaskCard({required this.task});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.colors.secondary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 12, vertical: 14
        ),
        child: Column(
          spacing: 6,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              task.title,
              style: context.textStyles.labelLarge?.copyWith(
                  fontSize: 16,
              ),
            ),
            Text(
              context.tr(
                  LocaleKeys.originally_due,
                  args: [
                    DateFormat.yMMMd(context.locale.toString())
                        .format(task.dueAt ?? DateTime.now())
                  ],
              ),
              style: context.textStyles.bodyMedium?.copyWith(
                  color: context.colors.mutedForeground
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _RescheduleInfoBox extends StatelessWidget{
  final RescheduleInfo rescheduleInfo;
  final VoidCallback refresh;
  final VoidCallback accept;

  const _RescheduleInfoBox({
    required this.rescheduleInfo,
    required this.refresh,
    required this.accept
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 14),
            child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(color: context.colors.accentViolet.withValues(alpha: 0.4)),
                ),
                color: context.colors.accentViolet.withValues(alpha: 0.1),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12, vertical: 14
                  ),
                  child: Row(
                    spacing: 10,
                    children: [
                      DecoratedBox(
                        decoration: BoxDecoration(
                            color: context.colors.accentViolet,
                            borderRadius: BorderRadius.circular(16)
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: SvgIcon(
                                Assets.icons.icCalendar,
                                size: 26,
                                color: context.colors.primaryForeground
                            )
                        ),
                      ),
                      Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: 4,
                            children: [
                              Text(
                                  DateFormat.yMMMMd(context.locale.toString())
                                      .format(rescheduleInfo.dueAt),
                                  style: context.textStyles.labelLarge?.copyWith(
                                    fontSize: 16
                                  )
                              ),
                              Text(
                                  rescheduleInfo.description,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: context.textStyles.bodyMedium?.copyWith(
                                      color: context.colors.mutedForeground
                                  )
                              )
                            ]
                        ),
                      )
                    ],
                  ),
                )
            ),
          ),
          Row(
            spacing: 12,
            children: [
              Expanded(
                  child: OutlinedButton(
                    onPressed: () => refresh(),
                    child: Text(context.tr(LocaleKeys.try_another)),
                  )
              ),
              Expanded(
                child: ElevatedButton.icon(
                    onPressed: () => accept(),
                    icon: SvgIcon(
                      Assets.icons.icCheck,
                      size: 20,
                      color: context.colors.primaryForeground,
                    ),
                    label: Text(context.tr(LocaleKeys.accept))
                ),
              )
            ],
          )
        ]
    );
  }
}

class _LoadingBox extends StatelessWidget{
  const _LoadingBox();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 40, bottom: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 12,
          children: [
            LoadingIcon(
              color: context.colors.accentViolet,
            ),
            Text(
                context.tr(LocaleKeys.thinking),
                style: context.textStyles.bodyMedium?.copyWith(
                    color: context.colors.mutedForeground
                )
            )
          ],
        )
    );
  }
}

class _ErrorBox extends StatelessWidget{
  final Object error;
  final VoidCallback refresh;

  const _ErrorBox({
    required this.error,
    required this.refresh
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 26, bottom: 10),
        child: Column(
          spacing: 8,
          children: [
            CircleAvatar(
              radius: 26,
              backgroundColor: context.colors.destructive.withValues(alpha: 0.15),
              child: SvgIcon(
                Assets.icons.icClose,
                color: context.colors.destructive,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6),
                child: Text(
                  (error as NetworkError?).message,
                  style: context.textStyles.bodyMedium?.copyWith(
                      color: context.colors.mutedForeground
                  ),
                  textAlign: TextAlign.center,
                ),
            ),
            OutlinedButton(
                onPressed: () => refresh(),
                style: OutlinedButton.styleFrom(
                  minimumSize: Size.fromHeight(0)
                ),
                child: Text(context.tr(LocaleKeys.try_again))
            )
          ],
        )
    );
  }
}
