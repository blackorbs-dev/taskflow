import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taskflow/gen/assets.gen.dart';
import 'package:taskflow/shared/ui/widgets/main_scaffold.dart';
import 'package:taskflow/shared/ui/widgets/primary_button.dart';
import '../../../../translations/locale_keys.g.dart';
import '../controller/projects_event.dart';
import '../controller/projects_state_notifier.dart';
import '../widgets/project_card.dart';
import '../widgets/project_popup.dart';

class ProjectsScreen extends ConsumerWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(projectsStateProvider);

    void onEvent(ProjectsEvent event){
      ref.read(projectsStateProvider.notifier)
          .handleEvent(event);
    }

    return MainScaffold(
        title: context.tr(LocaleKeys.projects),
        subtitle: context.tr(
            LocaleKeys.projects_count,
            args: [state.projects.length.toString()]
        ),
        body: Stack(
          children: [
            ListView.builder(
                padding: const EdgeInsets.only(top: 16, bottom: 68),
                itemCount: state.projects.length,
                itemBuilder: (context, index) {
                  final project = state.projects[index];
                  return ProjectCard(
                    project: project,
                    onEvent: onEvent,
                  );
                }
            ),
            Positioned(
              bottom: 16,
              right: 0,
              child: PrimaryButton.icon(
                text: context.tr(LocaleKeys.new_project),
                icon: Assets.icons.icPlus,
                width: null,
                onPressed: (){
                  onEvent(ProjectsEvent.newProject());
                  showDialog(
                      context: context,
                      builder: (_) => const Dialog(
                          insetPadding: EdgeInsets.symmetric(horizontal: 12),
                          child: ProjectPopup()
                      )
                  );
                },
              ),
            )
          ],
        )
    );
  }
}
