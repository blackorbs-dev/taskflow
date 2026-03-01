import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:taskflow/core/theming/theme_extensions.dart';
import 'package:taskflow/gen/assets.gen.dart';
import 'svg_icon.dart';

class DateSelectField extends StatelessWidget {
  final DateTime? value;
  final ValueChanged<DateTime> onChanged;
  final String placeholder;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final String? Function(String?)? validator;

  const DateSelectField({
    super.key,
    required this.value,
    required this.onChanged,
    this.placeholder = '',
    this.firstDate,
    this.lastDate,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    final text = value == null ? ''
        : DateFormat.yMMMd(context.locale.toString())
        .format(value!);

    return FormField<String>(
      key: ValueKey(value),
      initialValue: text,
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      builder: (state) {
        return TextField(
          readOnly: true,
          onTap: () async {
            final now = DateTime.now();
            final picked = await showDatePicker(
              context: context,
              initialDate: value ?? now,
              firstDate: firstDate ?? DateTime(now.year - 10),
              lastDate: lastDate ?? DateTime(now.year + 10),
            );

            if (picked != null) {
              onChanged(picked);
              if(!context.mounted) return;
              state.didChange(DateFormat.yMMMd(context.locale.toString()).format(picked));
              state.validate();
            }
          },
          style: context.textStyles.bodyMedium,
          decoration: InputDecoration(
            hintText: placeholder,
            errorText: state.errorText,
            prefixIcon: Padding(
              padding: const EdgeInsetsGeometry.fromSTEB(6, 12, 0, 12),
              child: SvgIcon(
                Assets.icons.icCalendar,
                color: context.colors.mutedForeground,
                size: 16,
              ),
            ),
          ),
          controller: TextEditingController(text: state.value ?? ''),
        );
      },
    );
  }
}

