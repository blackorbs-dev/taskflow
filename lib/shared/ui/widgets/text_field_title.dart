import 'package:flutter/cupertino.dart';
import 'package:taskflow/core/theming/theme_extensions.dart';

class TextFieldTitle extends StatelessWidget{
  const TextFieldTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
          padding: const EdgeInsets.only(bottom: 4, top: 18),
          child: Text(
              title,
              style: context.textStyles.titleSmall
          )
      ),
    );
  }
}