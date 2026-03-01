import 'package:flutter/material.dart';
import 'package:taskflow/core/theming/theme_extensions.dart';
import 'package:taskflow/gen/assets.gen.dart';
import 'package:taskflow/shared/ui/widgets/svg_icon.dart';

class DropDownField<T> extends StatelessWidget {
  final T? value;
  final ValueChanged<T> onChanged;
  final String? placeholder;
  final List<T> items;
  final String Function(T item) labelOf;
  final Widget? Function(T item)? leadingOf;
  final bool enabled;
  final String? Function(T?)? validator;

  const DropDownField({
    super.key,
    required this.value,
    required this.onChanged,
    required this.items,
    required this.labelOf,
    this.leadingOf,
    this.placeholder,
    this.enabled = true,
    this.validator
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(focusColor: Colors.transparent),
        child:  DropdownButtonFormField<T>(
          initialValue: value,
          onChanged: enabled ? (value){
            if(value != null) {
              onChanged(value);
            }
          } : null,
          isExpanded: true,
          decoration: const InputDecoration(),
          borderRadius: BorderRadius.circular(14),
          hint: placeholder == null ? null : Text(placeholder!),
          iconSize: 20,
          style: context.textStyles.bodyMedium,
          icon: SvgIcon(
              Assets.icons.icChevronDown,
              size: 20,
              color: context.colors.mutedForeground
          ),
          items: items.map((item) {
            final leading = leadingOf?.call(item);
            final isSelected = item == value;
            return DropdownMenuItem<T>(
              value: item,
              child: Container(
                constraints: BoxConstraints(
                    minHeight: 48
                ),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: isSelected ? context.colors.border : Colors.transparent
                ),
                child: Row(
                  spacing: 8,
                  children: [
                    ?leading,
                    Expanded(child: Text(labelOf(item))),
                    SvgIcon(
                      Assets.icons.icCheck,
                      size: 22,
                      color: isSelected ? context.colors.foreground : Colors.transparent,
                    )
                  ],
                ),
              ),
            );
          }).toList(),
          validator: validator,
          selectedItemBuilder: (_) {
            return items.map((item) {
              final leading = leadingOf?.call(item);
              return DropdownMenuItem<T>(
                value: item,
                child: Row(
                  spacing: 8,
                  children: [
                    ?leading,
                    Expanded(child: Text(labelOf(item))),
                  ],
                ),
              );
            }).toList();
          },
        )
    );
  }
}
