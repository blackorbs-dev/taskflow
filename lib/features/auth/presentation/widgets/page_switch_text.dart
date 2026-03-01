import 'package:flutter/material.dart';
import 'package:taskflow/core/theming/theme_extensions.dart';

class PageSwitchText extends StatelessWidget {
  final String text;
  final String actionText;
  final VoidCallback onTap;

  const PageSwitchText({
    super.key,
    required this.text,
    required this.actionText,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
            text,
          style: context.textStyles.bodyMedium?.copyWith(
            color: context.colors.mutedForeground
          ),
        ),
        TextButton(
          onPressed: onTap,
          style: TextButton.styleFrom(
            textStyle: context.textStyles.bodyMedium,
            foregroundColor: context.colors.accentCoral,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            padding: EdgeInsets.zero
          ),
          child: Text(actionText),
        )
      ],
    );
  }
}
