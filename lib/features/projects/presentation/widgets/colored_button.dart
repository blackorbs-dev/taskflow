import 'package:flutter/cupertino.dart';
import 'package:taskflow/core/theming/theme_extensions.dart';

class ColoredButton extends StatelessWidget {
  final Color? color;
  final bool selected;
  final VoidCallback onTap;
  final Widget? child;

  const ColoredButton({
    super.key,
    this.color,
    required this.selected,
    required this.onTap,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    final scale = selected ? 1.1 : 1.0;

    return GestureDetector(
        onTap: onTap,
        child: AnimatedScale(
          scale: scale,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOutBack,
          child: Container(
            width: 42,
            height: 42,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: color ?? colors.secondary,
              borderRadius: BorderRadius.circular(16),
              boxShadow: selected
                  ? [
                BoxShadow(
                  color: colors.foreground,
                  spreadRadius: 3.5,
                  blurRadius: 0,
                ),
                BoxShadow(
                  color: colors.background,
                  spreadRadius: 1.5,
                  blurRadius: 0,
                ),
              ] : null,
            ),
            child: child,
          ),
        ),
    );
  }
}
