import 'package:flutter/material.dart';
import 'package:taskflow/core/theming/theme_extensions.dart';
import 'package:taskflow/gen/assets.gen.dart';
import 'svg_icon.dart';

class TextInputField extends StatefulWidget {
  const TextInputField({
    super.key,
    this.initialValue,
    required this.hint,
    required this.onChanged,
    this.inputType,
    this.inputAction,
    this.maxLines = 1,
    this.validator,
    this.icon,
    this.controller
  });

  final String? initialValue;
  final String hint;
  final SvgGenImage? icon;
  final TextInputType? inputType;
  final TextInputAction? inputAction;
  final int maxLines;
  final TextEditingController? controller;
  final void Function(String value) onChanged;
  final String? Function(String?)? validator;

  @override
  State<StatefulWidget> createState() => TextInputFieldState();
}

class TextInputFieldState extends State<TextInputField> {

  late bool _obscureText;
  late final TextEditingController _internalController;
  TextEditingController get _c => widget.controller ?? _internalController;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.inputType == TextInputType.visiblePassword;
    _internalController = TextEditingController(text: widget.initialValue ?? '');
  }

  @override
  void didUpdateWidget(covariant TextInputField oldWidget) {
    super.didUpdateWidget(oldWidget);

    // If parent provides new initialValue, update text ONLY if we own controller
    // and only if the text is actually different (prevents cursor jumps).
    if (widget.controller == null) {
      final next = widget.initialValue ?? '';
      if (oldWidget.initialValue != widget.initialValue && _c.text != next) {
        WidgetsBinding.instance.addPostFrameCallback((_){
          _c.value = _c.value.copyWith(
            text: next,
            selection: TextSelection.collapsed(offset: next.length),
            composing: TextRange.empty,
          );
        });
      }
    }
  }

  @override
  void dispose() {
    _internalController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material( // required for using Hero animation
        type: MaterialType.transparency, // keeps background invisible
        child: TextFormField(
            controller: _c,
            style: context.textStyles.bodyMedium,
            keyboardType: widget.inputType,
            textInputAction: widget.inputAction,
            validator: widget.validator,
            obscureText: _obscureText,
            minLines: widget.maxLines,
            maxLines: widget.maxLines,
            autovalidateMode: AutovalidateMode.onUserInteractionIfError,
            decoration: InputDecoration(
              isDense: true, hintText: widget.hint,
              prefixIcon: widget.icon == null ? null
                  : Padding(
                  padding: const EdgeInsets.fromLTRB(
                      12, 12, 6, 12
                  ),
                  child: SvgIcon(
                      widget.icon!,
                      color: context.colors.mutedForeground
                  )
              ),
              contentPadding: const EdgeInsets.symmetric(
                  horizontal: 12, vertical: 16
              ),
              suffixIcon: widget.inputType == TextInputType.visiblePassword
                  ? IconButton(
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  icon: SvgIcon(
                    _obscureText ? Assets.icons.icEyeOff : Assets.icons.icEye,
                    color: context.colors.mutedForeground,
                  )
              ) : null,
            ),
            onChanged: widget.onChanged
        )
    );
  }
}