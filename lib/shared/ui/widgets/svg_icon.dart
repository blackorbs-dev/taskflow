import 'package:flutter/cupertino.dart';
import 'package:taskflow/gen/assets.gen.dart';

class SvgIcon extends StatelessWidget {
  const SvgIcon(this.icon, {super.key, this.label, this.color, this.size = 24});

  final SvgGenImage icon;
  final String? label;
  final Color? color;
  final double size;

  @override
  Widget build(BuildContext context) => icon.svg(
    semanticsLabel: label,
    width: size,
    height: size,
    colorFilter: color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
  );
}
