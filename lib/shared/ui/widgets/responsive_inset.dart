import 'package:flutter/cupertino.dart';

class ResponsiveInset extends StatelessWidget {
  const ResponsiveInset({
    super.key,
    required this.child,
    this.maxWidth = 1200,
    this.padding = const EdgeInsets.symmetric(horizontal: 16),
  });

  final Widget child;
  final double maxWidth;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(
      builder: (_, constraints){
        final extraPadding = constraints.calculateExtraPadding(maxWidth);

        return Padding(
          padding: extraPadding.add(padding),
          child: child,
        );
      },
    );
  }
}

extension XPadding on BoxConstraints{
  EdgeInsets calculateExtraPadding(double maxWidth) {
    final screenWidth = this.maxWidth;

    final extraPadding = screenWidth > maxWidth
        ? (screenWidth - maxWidth) / 2
        : 0.0;
    return EdgeInsets.symmetric(horizontal: extraPadding);
  }
}