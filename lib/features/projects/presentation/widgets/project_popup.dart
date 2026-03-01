import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taskflow/core/theming/app_pallete.dart';
import 'package:taskflow/core/theming/theme_extensions.dart';
import 'package:taskflow/shared/ui/widgets/popup_container.dart';
import 'package:taskflow/shared/ui/widgets/primary_button.dart';
import 'package:taskflow/shared/ui/widgets/text_field_title.dart';
import 'package:taskflow/shared/ui/widgets/text_input_field.dart';
import 'package:taskflow/translations/locale_keys.g.dart';
import '../controller/projects_event.dart';
import '../controller/projects_state_notifier.dart';
import 'colored_button.dart';

class ProjectPopup extends ConsumerWidget {
  const ProjectPopup({super.key});

  static const _projectIcons = [
    '📋', '🎯', '💼', '🏠', '💪', '📚', '🎨', '🚀', '💡', '🌟'
  ];

  static const _projectColors = [
    AppPalette.accentCoral,
    AppPalette.accentAmber,
    AppPalette.accentEmerald,
    AppPalette.accentViolet,
    AppPalette.accentSky
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final project = ref.watch(projectsStateProvider
        .select((state) => state.selectedProject)
    );

    void onEvent(ProjectsEvent event){
      ref.read(projectsStateProvider.notifier).handleEvent(event);
    }

    return PopupContainer(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.tr(
                project.isNew ? LocaleKeys.new_project
                    : LocaleKeys.edit_project
            ),
            style: context.textStyles.titleLarge,
          ),
          TextFieldTitle(
            title: context.tr(LocaleKeys.project_name),
          ),
          TextInputField(
              initialValue: project.name,
              hint: context.tr(LocaleKeys.eg_work_personal),
              onChanged: (value) {
                onEvent(ProjectsEvent.nameChanged(value));
              }
          ),
          TextFieldTitle(
            title: context.tr(LocaleKeys.color),
          ),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: _projectColors.map((color) {
              final value = color.toARGB32();
              return ColoredButton(
                color: color,
                selected: value == project.color,
                onTap: () {
                  onEvent(ProjectsEvent.colorChanged(value));
                },
              );
            }).toList(),
          ),
          TextFieldTitle(
            title: context.tr(LocaleKeys.icon),
          ),
          Wrap(
              spacing: 10,
              runSpacing: 10,
              children: _projectIcons.map((icon) {
                return ColoredButton(
                    selected: icon == project.icon,
                    onTap: () {
                      onEvent(ProjectsEvent.iconChanged(icon));
                    },
                    child: Text(
                        icon,
                      style: context.textStyles.titleLarge,
                    )
                );
              }).toList()
          ),
          TextFieldTitle(
            title: context.tr(LocaleKeys.preview),
          ),
          Card.filled(
            color: context.colors.secondary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            margin: const EdgeInsets.only(bottom: 28),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                spacing: 12,
                children: [
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: Color(project.color),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        project.icon,
                        style: context.textStyles.headlineMedium,
                      ),
                    ),
                  ),
                  Text(
                    project.name,
                    style: context.textStyles.titleMedium,
                  )
                ],
              ),
            ),
          ),
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
                          project.isNew ? LocaleKeys.create_project
                              : LocaleKeys.save_changes
                      ),
                      enabled: project.name.isNotEmpty,
                      onPressed: (){
                        onEvent(ProjectsEvent.saveProject());
                        Navigator.of(context).pop();
                      }
                  )
              )
            ],
          )
        ],
      ),
    );
  }
}
