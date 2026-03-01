import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taskflow/core/theming/app_pallete.dart';
import 'package:taskflow/core/theming/theme_extensions.dart';
import 'package:taskflow/features/tasks/presentation/widgets/task_card.dart';
import 'package:taskflow/gen/assets.gen.dart';
import 'package:taskflow/shared/ui/toast_manager.dart';
import 'package:taskflow/shared/ui/widgets/drop_down_field.dart';
import 'package:taskflow/shared/ui/widgets/main_scaffold.dart';
import 'package:taskflow/shared/ui/widgets/primary_button.dart';
import 'package:taskflow/shared/ui/widgets/sparkle_icon_box.dart';
import 'package:taskflow/shared/ui/widgets/svg_icon.dart';
import 'package:taskflow/shared/ui/widgets/text_field_title.dart';
import 'package:taskflow/shared/ui/widgets/text_input_field.dart';
import '../../../../translations/locale_keys.g.dart';
import '../controller/ai_event.dart';
import '../controller/ai_state_notifier.dart';
import '../widgets/suggested_task_card.dart';

class AIScreen extends ConsumerStatefulWidget {
  const AIScreen({super.key});

  @override
  ConsumerState<AIScreen> createState() => _AIScreenState();
}

class _AIScreenState extends ConsumerState<AIScreen> {

  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    ref.listenManual(aiStateProvider, (_, state){
      if(state.alertInfo != null){
        ToastManager().show(context, state.alertInfo!);
        _onEvent(AIEvent.alertShown());
      }
      if(state.taskGenerated){
        WidgetsBinding.instance.addPostFrameCallback((_){
          _scrollController.animateTo(
              _scrollController.position.maxScrollExtent,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeOut
          );
        });
        _onEvent(AIEvent.resetTaskGeneratedFlag());
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onEvent(AIEvent event) {
    ref.read(aiStateProvider.notifier).handleEvent(event);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(aiStateProvider);


    return MainScaffold(
        title: context.tr(LocaleKeys.ai_assistant),
        body: SingleChildScrollView(
            controller: _scrollController,
            padding: const EdgeInsets.only(top: 28, bottom: 22),
            child: Column(
                children: [
                  const SparkleIconBox(
                      gradient: AppPalette.gradientAi
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18, bottom: 4),
                    child: Text(
                      context.tr(LocaleKeys.ai_task_assistant),
                      style: context.textStyles.titleLarge,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsGeometry.symmetric(horizontal: 34),
                    child: Text(
                      context.tr(
                          LocaleKeys.describe_what_you_want_to_accomplish
                      ),
                      textAlign: TextAlign.center,
                      style: context.textStyles.bodyMedium?.copyWith(
                          color: context.colors.mutedForeground
                      ),
                    ),
                  ),
                  Card.outlined(
                    margin: const EdgeInsets.symmetric(
                      vertical: 26,
                    ),
                    child: Padding(
                      padding: const EdgeInsetsGeometry.symmetric(
                          horizontal: 18, vertical: 16
                      ),
                      child: Column(
                        children: [
                          TextInputField(
                              initialValue: state.prompt,
                              hint: context.tr(LocaleKeys.eg_plan_my_week_prompt),
                              maxLines: 4,
                              onChanged: (value){
                                _onEvent(AIEvent.promptChanged(value));
                              }
                          ),
                          Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              child: Wrap(
                                  spacing: 10,
                                  runSpacing: 10,
                                  children: [
                                    context.tr(LocaleKeys.plan_my_week_prompt),
                                    context.tr(LocaleKeys.give_me_learning_tasks_prompt),
                                    context.tr(LocaleKeys.create_morning_routine_prompt),
                                    context.tr(LocaleKeys.suggest_high_priority_task_prompt),
                                  ].map((text) => InkWell(
                                      onTap: (){
                                        _onEvent(AIEvent.promptChanged(text));
                                      },
                                      child: LabelText(
                                        text: text,
                                        color: context.colors.mutedForeground,
                                        style: context.textStyles.labelMedium,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 18, vertical: 7
                                        ),
                                      )
                                  )).toList()
                              )
                          ),
                          PrimaryButton.loader(
                            text: context.tr(LocaleKeys.generate_tasks),
                            loadingText: context.tr(LocaleKeys.generating_tasks),
                            icon: Assets.icons.icWandSparkles,
                            isLoading: state.isLoading,
                            enabled: state.prompt.isNotEmpty,
                            gradient: AppPalette.gradientAi,
                            onPressed: (){
                              _onEvent(AIEvent.generateTasks());
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                  if(state.suggestedTasks.isNotEmpty)
                    Card.outlined(
                        child: Padding(
                            padding: const EdgeInsetsGeometry.fromSTEB(18, 22, 18, 16),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    spacing: 8,
                                    children: [
                                      SvgIcon(
                                          Assets.icons.icSparkles,
                                          color: context.colors.accentViolet,
                                          size: 18
                                      ),
                                      Text(
                                        context.tr(
                                          LocaleKeys.suggested_tasks,
                                          args: [state.suggestedTasks.length.toString()],
                                        ),
                                        style: context.textStyles.labelLarge?.copyWith(
                                            fontSize: 17
                                        ),
                                      )
                                    ],
                                  ),
                                  ListView.builder(
                                    padding: const EdgeInsets.only(top: 14),
                                    shrinkWrap: true,
                                    physics: const NeverScrollableScrollPhysics(),
                                    itemCount: state.suggestedTasks.length,
                                    itemBuilder: (_, index){
                                      return SuggestedTaskCard(
                                          task: state.suggestedTasks[index],
                                          onTap: (){
                                            _onEvent(AIEvent.taskSelected(index));
                                          }
                                      );
                                    },
                                  ),
                                  TextFieldTitle(
                                    title: context.tr(LocaleKeys.import_to_project),
                                  ),
                                  DropDownField(
                                    value: state.selectedProject,
                                    onChanged: (value) {
                                      _onEvent(AIEvent.projectSelected(value));
                                    },
                                    placeholder: context.tr(LocaleKeys.select_project),
                                    items: state.projects,
                                    labelOf: (project) => project.name,
                                    leadingOf: (project) => Text(
                                      project.icon,
                                      style: context.textStyles.titleLarge,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 18),
                                    child: Builder(
                                      builder: (_){
                                        final isButtonEnabled = state.selectedTasksCount > 0
                                            && state.selectedProject != null;
                                        final foregroundColor = context.colors.primaryForeground
                                            .withValues(alpha: isButtonEnabled ? null : 0.7);

                                        return ElevatedButton.icon(
                                            onPressed: isButtonEnabled ?  () {
                                              _onEvent(AIEvent.importTasks());
                                            } : null,
                                            label: Text(
                                                context.tr(
                                                    LocaleKeys.import_tasks,
                                                    args: [state.selectedTasksCount.toString()]
                                                )
                                            ),
                                            icon: SvgIcon(
                                              Assets.icons.icPlus,
                                              size: 20,
                                              color: foregroundColor,
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              disabledForegroundColor: foregroundColor,
                                            )
                                        );
                                      },
                                    ),
                                  )
                                ]
                            )
                        )
                    )
                ]
            )
        )
    );
  }
}
