import 'package:flutter/cupertino.dart';
import 'package:taskflow/core/theming/theme_extensions.dart';

class StatItem extends StatelessWidget {
  const StatItem({
    super.key,
    required this.title,
    required this.value,
    this.margin = const EdgeInsets.only(top: 8)
  });

  final String title;
  final String value;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
                title,
                style: context.textStyles.bodyMedium?.copyWith(
                  color: context.colors.mutedForeground,
                )
            ),
            Text(
                value,
                style: context.textStyles.labelLarge
            )
          ]
      )
    );
  }
}
