import 'package:flutter/material.dart';
import 'package:taskflow/core/theming/theme_extensions.dart';
import 'package:taskflow/gen/assets.gen.dart';
import 'package:taskflow/shared/ui/widgets/svg_icon.dart';

class PopupContainer extends StatelessWidget {
  final Widget body;

  const PopupContainer({super.key, required this.body,});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.colors.background,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          SingleChildScrollView(
              padding: const EdgeInsets.all(18),
              child: body
          ),
          Positioned(
              top: 4,
              right: 4,
              child: IconButton.filled(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  style: IconButton.styleFrom(
                    backgroundColor: context.colors.secondary,
                  ),
                  icon: SvgIcon(
                      Assets.icons.icClose,
                      color: context.colors.mutedForeground
                  )
              )
          )
        ],
      ),
    );
  }
}
