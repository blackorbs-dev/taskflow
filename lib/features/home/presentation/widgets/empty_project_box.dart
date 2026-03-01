import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:taskflow/core/theming/theme_extensions.dart';
import 'package:taskflow/features/projects/presentation/widgets/project_popup.dart';
import 'package:taskflow/gen/assets.gen.dart';
import 'package:taskflow/shared/ui/widgets/svg_icon.dart';
import 'package:taskflow/translations/locale_keys.g.dart';

class EmptyProjectBox extends StatelessWidget {
  final VoidCallback onCreateProject;

  const EmptyProjectBox({super.key, required this.onCreateProject});

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 42, horizontal: 24),
        child: Column(
          spacing: 14,
          children: [
            Text(
              context.tr(LocaleKeys.no_projects_yet),
              style: context.textStyles.bodyMedium?.copyWith(
                color: context.colors.mutedForeground
              )
            ),
            OutlinedButton(
                onPressed: (){
                  onCreateProject();
                  showDialog(
                      context: context,
                      builder: (_) => const Dialog(
                        insetPadding: EdgeInsets.symmetric(horizontal: 12),
                        child: ProjectPopup()
                      )
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 10,
                  children: [
                    SvgIcon(
                      Assets.icons.icPlus,
                      size: 20,
                      color: context.colors.foreground
                    ),
                    Text(
                      context.tr(LocaleKeys.create_your_first_project)
                    )
                  ],
                )
            )
          ]
        )
      )
    );
  }
}
