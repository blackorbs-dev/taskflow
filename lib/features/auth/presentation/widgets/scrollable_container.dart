import 'package:flutter/cupertino.dart';
import 'package:taskflow/shared/ui/widgets/responsive_inset.dart';


class ScrollableContainer extends StatelessWidget{
  final Widget child;
  final double maxWidth;
  final EdgeInsetsGeometry padding;

  /// SingleChildScrollview with Proper Insets handling.
  /// Can be used for layout with Forms.
  /// Child layout can take max height e.g [Column] with [MainAxisSize.max]
  const ScrollableContainer({
    super.key,
    required this.child,
    this.maxWidth = 1200,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
  });

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    return LayoutBuilder(
        builder: (context, constraints) {
          final totalPadding = padding.add(mq.padding);
          final extraPadding = constraints.calculateExtraPadding(maxWidth);

          return SingleChildScrollView(
              padding: EdgeInsets.only(
                bottom: mq.viewInsets.bottom, // keyboard-safe
              ).add(totalPadding).add(extraPadding),
              child: ConstrainedBox(
                  constraints: BoxConstraints(
                      minHeight: mq.size.height - totalPadding.vertical
                  ),
                  child: child
              )
          );
        }
    );
  }
}