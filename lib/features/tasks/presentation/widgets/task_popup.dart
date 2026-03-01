import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taskflow/core/theming/theme_extensions.dart';
import 'package:taskflow/core/util/input_validators.dart';
import 'package:taskflow/features/tasks/domain/models/task.dart';
import 'package:taskflow/features/tasks/presentation/extension.dart';
import 'package:taskflow/shared/ui/widgets/date_select_field.dart';
import 'package:taskflow/shared/ui/widgets/drop_down_field.dart';
import 'package:taskflow/shared/ui/widgets/popup_container.dart';
import 'package:taskflow/shared/ui/widgets/primary_button.dart';
import 'package:taskflow/shared/ui/widgets/text_field_title.dart';
import 'package:taskflow/shared/ui/widgets/text_input_field.dart';
import 'package:taskflow/translations/locale_keys.g.dart';
import '../controller/tasks_event.dart';
import '../controller/tasks_state_notifier.dart';

class TaskPopup extends ConsumerStatefulWidget {
  final int projectId;

  const TaskPopup({super.key, required this.projectId});

  @override
  ConsumerState<TaskPopup> createState() => _TaskPopupState();
}

class _TaskPopupState extends ConsumerState<TaskPopup> {

  final _formKey = GlobalKey<FormState>();

  void _onEvent(TasksEvent event) {
    ref.read(tasksStateProvider(widget.projectId).notifier)
        .handleEvent(event);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(
        tasksStateProvider(widget.projectId)
    );
    final task = state.selectedTask;

    return PopupContainer(
        body: Form(
            key: _formKey,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.tr(
                        task.isNew ? LocaleKeys.new_task
                            : LocaleKeys.edit_task
                    ),
                    style: context.textStyles.titleLarge,
                  ),

                  TextFieldTitle(
                    title: context.tr(LocaleKeys.title),
                  ),
                  TextInputField(
                      initialValue: task.title,
                      hint: context.tr(LocaleKeys.what_needs_to_be_done),
                      onChanged: (value) {
                        _onEvent(TasksEvent.titleChanged(value));
                      }
                  ),

                  TextFieldTitle(
                    title: context.tr(LocaleKeys.description),
                  ),
                  TextInputField(
                      initialValue: task.description,
                      hint: context.tr(LocaleKeys.add_more_details),
                      maxLines: 4,
                      onChanged: (value) {
                        _onEvent(TasksEvent.descriptionChanged(value));
                      }
                  ),

                  Row(
                    spacing: 16,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextFieldTitle(
                              title: context.tr(LocaleKeys.priority),
                            ),
                            DropDownField(
                                value: task.priority,
                                onChanged: (value) {
                                  _onEvent(TasksEvent.priorityChanged(value));
                                },
                                items: TaskPriority.values,
                                labelOf: (priority) => context.tr(priority.name),
                                leadingOf: (priority) => CircleAvatar(
                                    radius: 10,
                                    backgroundColor: priority.color
                                )
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextFieldTitle(
                                title: context.tr(LocaleKeys.due_date),
                              ),
                              DateSelectField(
                                  value: task.dueAt,
                                  placeholder: context.tr(LocaleKeys.pick_a_date),
                                  onChanged: (value) {
                                    _onEvent(TasksEvent.dueDateSelected(value));
                                  },
                                  validator: (value) => InputValidator.required(
                                      value, LocaleKeys.due_date
                                  )
                              )
                            ]
                        ),
                      )
                    ],
                  ),

                  TextFieldTitle(
                    title: context.tr(LocaleKeys.project),
                  ),
                  DropDownField(
                    value: state.selectedProject,
                    onChanged: (value) {
                      _onEvent(TasksEvent.projectSelected(value));
                    },
                    items: state.projects,
                    labelOf: (project) => project.name,
                    leadingOf: (project) => Text(
                      project.icon,
                      style: context.textStyles.titleLarge,
                    ),
                  ),

                  const SizedBox(height: 16),

                  Row(
                    spacing: 16,
                    children: [
                      Expanded(
                          child: OutlinedButton(
                            onPressed: (){
                              Navigator.of(context).pop();
                            },
                            child: Text(context.tr(LocaleKeys.cancel)),
                          )
                      ),
                      Expanded(
                          child: PrimaryButton.text(
                              text: context.tr(
                                  task.isNew ? LocaleKeys.create_task
                                      : LocaleKeys.save_changes
                              ),
                              enabled: task.title.isNotEmpty,
                              onPressed: (){
                                if(_formKey.currentState?.validate() == true){
                                  _onEvent(TasksEvent.saveTask());
                                  Navigator.of(context).pop();
                                }
                              }
                          )
                      )
                    ],
                  )
                ]
            )
        )
    );
  }
}