import 'package:flutter/cupertino.dart';
import 'package:taskflow/core/theming/theme_extensions.dart';
import 'package:taskflow/gen/assets.gen.dart';
import 'svg_icon.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    super.key,
    required this.text,
    required this.icon,
    this.color
  });

  final String text;
  final SvgGenImage icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        SvgIcon(
            icon, size: 20,
            color: color ?? context.colors.foreground
        ),
        Text(
            text,
            style: context.textStyles.bodyMedium?.copyWith(
                color: color
            )
        )
      ],
    );
  }
}