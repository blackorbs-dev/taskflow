import 'package:flutter/material.dart';
import 'package:taskflow/core/theming/theme_extensions.dart';
import 'package:taskflow/gen/assets.gen.dart';
import 'package:taskflow/shared/ui/widgets/svg_icon.dart';

class StatsCard extends StatelessWidget {
  final int value;
  final String title;
  final SvgGenImage icon;
  final Color iconColor;

  const StatsCard({
    super.key,
    required this.value,
    required this.title,
    required this.icon,
    required this.iconColor
  });

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: iconColor.withValues(alpha: 0.15)
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: SvgIcon(
                  icon,
                  color: iconColor,
                )
              )
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 2),
              child: Text(
                '$value',
                style: context.textStyles.titleLarge
              )
            ),
            Text(
              title,
              style: context.textStyles.bodySmall?.copyWith(
                color: context.colors.mutedForeground
              )
            )
          ]
        )
      )
    );
  }
}
