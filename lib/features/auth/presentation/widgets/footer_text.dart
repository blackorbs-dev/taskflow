import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:taskflow/core/theming/theme_extensions.dart';
import 'package:taskflow/gen/assets.gen.dart';
import 'package:taskflow/shared/ui/widgets/svg_icon.dart';
import 'package:taskflow/translations/locale_keys.g.dart';

class FooterText extends StatelessWidget{
  const FooterText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 28,
      children: [
        _FooterItem(
            text: context.tr(LocaleKeys.offline_support),
            icon: Assets.icons.icCircleCheck,
            iconColor: context.colors.accentEmerald
        ),
        _FooterItem(
            text: context.tr(LocaleKeys.ai_assistant),
            icon: Assets.icons.icSparkles,
            iconColor: context.colors.accentViolet
        ),
      ],
    );
  }
}

class _FooterItem extends StatelessWidget {

  final String text;
  final SvgGenImage icon;
  final Color iconColor;

  const _FooterItem({
    required this.text,
    required this.icon,
    required this.iconColor
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 8,
      children: [
        SvgIcon(
            icon,
          size: 18,
          color: iconColor,
        ),
        Text(
          text,
          style: context.textStyles.bodyMedium?.copyWith(
            color: context.colors.mutedForeground
          ),
        )
      ],
    );
  }
}
