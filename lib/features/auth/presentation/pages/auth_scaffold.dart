import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:taskflow/core/theming/theme_extensions.dart';
import 'package:taskflow/features/auth/presentation/widgets/scrollable_container.dart';
import 'package:taskflow/shared/ui/widgets/sparkle_icon_box.dart';
import 'package:taskflow/translations/locale_keys.g.dart';
import '../widgets/footer_text.dart';

class AuthScaffold extends StatelessWidget {
  const AuthScaffold({super.key, required this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ScrollableContainer(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SparkleIconBox(),
                    Padding(
                      padding: const EdgeInsets.only(top: 18),
                      child: Text(
                        context.tr(LocaleKeys.task_flow),
                        style: context.textStyles.headlineSmall,
                      ),
                    ),
                    Text(
                      context.tr(
                          LocaleKeys.ai_powered_task_management),
                      textAlign: TextAlign.center,
                      style: context.textStyles.bodyLarge
                          ?.copyWith(
                          color: context.colors.mutedForeground
                      ),
                    ),
                    Card.outlined(
                      margin: const EdgeInsets.symmetric(
                        vertical: 30,
                      ),
                      child: Padding(
                        padding: const EdgeInsetsGeometry
                            .fromSTEB(
                            22, 28, 22, 16
                        ),
                        child: body,
                      ),
                    ),
                    const FooterText()
                  ],
                )
            )
    );
  }
}