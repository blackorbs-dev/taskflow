import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:taskflow/core/router/routes.dart';
import 'package:taskflow/core/theming/theme_extensions.dart';
import 'package:taskflow/gen/assets.gen.dart';
import 'package:taskflow/shared/domain/alert_info.dart';
import 'package:taskflow/shared/ui/toast_manager.dart';
import 'package:taskflow/shared/ui/widgets/main_scaffold.dart';
import 'package:taskflow/shared/ui/widgets/svg_icon.dart';
import 'package:taskflow/translations/locale_keys.g.dart';

import '../controller/profile_state_notifier.dart';
import '../widgets/stat_item.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(profileStateProvider);

    ref.listen(profileStateProvider, (_,newState){
      if(newState.isSignedOut){
        ToastManager().show(
            context,
            AlertInfo(
                message: tr(LocaleKeys.signed_out),
                type: AlertType.success
            )
        );
        context.go(Routes.login);
      }
    });

    return MainScaffold(
        title: context.tr(LocaleKeys.profile),
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 28, bottom: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card.outlined(
                child: Padding(
                  padding: const EdgeInsetsGeometry.fromSTEB(18, 18, 18, 26),
                  child: Column(
                    children: [
                      UserIcon(
                        textStyle: context.textStyles.headlineMedium,
                        padding: const EdgeInsets.all(28),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8, bottom: 2),
                        child: Text(
                          state.user.name,
                          style: context.textStyles.titleLarge,
                        )
                      ),
                      Text(
                        state.user.email,
                        textAlign: TextAlign.center,
                        style: context.textStyles.bodyMedium?.copyWith(
                            color: context.colors.mutedForeground
                        ),
                      )
                    ],
                  )
                )
              ),
              Card.outlined(
                margin: const EdgeInsets.symmetric(vertical: 26),
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    children: [
                      Text(
                        context.tr(LocaleKeys.statistics),
                        style: context.textStyles.labelLarge?.copyWith(
                          fontSize: 17
                        ),
                      ),
                      StatItem(
                        title: context.tr(LocaleKeys.total_projects),
                        value: state.totalProjectCount.toString(),
                        margin: const EdgeInsets.only(top: 16)
                      ),
                      StatItem(
                        title: context.tr(LocaleKeys.total_tasks),
                        value: state.taskSummary.totalCount.toString(),
                      ),
                      StatItem(
                        title: context.tr(LocaleKeys.completed_tasks),
                        value: state.taskSummary.completedCount.toString(),
                      ),
                      StatItem(
                        title: context.tr(LocaleKeys.completion_rate),
                        value: '${(state.taskSummary.percentage*100).toStringAsFixed(0)}%',
                      )
                    ],
                  )
                )
              ),
              OutlinedButton.icon(
                  onPressed: (){
                    ref.read(profileStateProvider.notifier).signOut();
                  },
                  label: Text(
                    context.tr(LocaleKeys.sign_out)
                  ),
                  icon: SvgIcon(
                    Assets.icons.icLogOut,
                    color: context.colors.foreground,
                  )
              )
            ],
          )
        )
    );
  }
}
