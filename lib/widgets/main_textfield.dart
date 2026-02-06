import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:petyz/theme/theme.dart';

class MainForm extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final String? hint;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onChanged;
  final String? Function(String?)? validator;
  final bool obscureText;
  final bool enabled;
  final int maxLines;
  final int? maxLength;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputAction? textInputAction;
  final VoidCallback? onTap;
  final bool readOnly;
  final FocusNode? focusNode;
  final EdgeInsetsGeometry? contentPadding;
  final TextCapitalization textCapitalization;

  const MainForm({
    super.key,
    this.controller,
    this.label,
    this.hint,
    this.keyboardType,
    this.onChanged,
    this.validator,
    this.obscureText = false,
    this.enabled = true,
    this.maxLines = 1,
    this.maxLength,
    this.prefixIcon,
    this.suffixIcon,
    this.inputFormatters,
    this.textInputAction,
    this.onTap,
    this.readOnly = false,
    this.focusNode,
    this.contentPadding,
    this.textCapitalization = TextCapitalization.none,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final textColor = isDark ? AppColors.darkForeground : AppColors.foreground;
    final mutedColor = isDark ? AppColors.darkMutedForeground : AppColors.mutedForeground;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) ...[
          Text(
            label!,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: mutedColor,
                  fontWeight: FontWeight.w500,
                ),
          ),
          const SizedBox(height: 8),
        ],
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          onChanged: onChanged,
          validator: validator,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          obscureText: obscureText,
          enabled: enabled,
          maxLines: maxLines,
          maxLength: maxLength,
          inputFormatters: inputFormatters,
          textInputAction: textInputAction,
          textCapitalization: textCapitalization,
          onTap: onTap,
          readOnly: readOnly,
          focusNode: focusNode,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: textColor,
              ),
          decoration: InputDecoration(
            hintText: hint,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            contentPadding: contentPadding,
          ),
        ),
      ],
    );
  }
}

class MainSelect<T> extends StatelessWidget {
  final String? label;
  final String? hint;
  final T? value;
  final List<DropdownMenuItem<T>> items;
  final ValueChanged<T?>? onChanged;
  final String? Function(T?)? validator;
  final bool enabled;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final EdgeInsetsGeometry? contentPadding;

  const MainSelect({
    super.key,
    this.label,
    this.hint,
    this.value,
    required this.items,
    this.onChanged,
    this.validator,
    this.enabled = true,
    this.prefixIcon,
    this.suffixIcon,
    this.contentPadding,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final textColor = isDark ? AppColors.darkForeground : AppColors.foreground;
    final mutedColor = isDark ? AppColors.darkMutedForeground : AppColors.mutedForeground;
    final dropdownBg = isDark ? AppColors.darkCard : AppColors.card;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) ...[
          Text(
            label!,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: mutedColor,
                  fontWeight: FontWeight.w500,
                ),
          ),
          const SizedBox(height: 8),
        ],
        DropdownButtonFormField<T>(
          initialValue: value,
          items: items,
          onChanged: enabled ? onChanged : null,
          validator: validator,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          icon: suffixIcon ??
              Icon(
                Icons.keyboard_arrow_down_rounded,
                color: mutedColor,
              ),
          dropdownColor: dropdownBg,
          borderRadius: BorderRadius.circular(16),
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: textColor,
              ),
          decoration: InputDecoration(
            hintText: hint,
            prefixIcon: prefixIcon,
            contentPadding: contentPadding,
          ),
        ),
      ],
    );
  }
}

class MainDatePicker extends StatelessWidget {
  final String? label;
  final String? hint;
  final DateTime? value;
  final ValueChanged<DateTime?>? onChanged;
  final String? Function(DateTime?)? validator;
  final bool enabled;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final TextEditingController? controller;

  const MainDatePicker({
    super.key,
    this.label,
    this.hint,
    this.value,
    this.onChanged,
    this.validator,
    this.enabled = true,
    this.prefixIcon,
    this.suffixIcon,
    this.firstDate,
    this.lastDate,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final textColor = isDark ? AppColors.darkForeground : AppColors.foreground;
    final mutedColor = isDark ? AppColors.darkMutedForeground : AppColors.mutedForeground;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) ...[
          Text(
            label!,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: mutedColor,
                  fontWeight: FontWeight.w500,
                ),
          ),
          const SizedBox(height: 8),
        ],
        TextFormField(
          controller: controller,
          readOnly: true,
          enabled: enabled,
          validator: (v) => validator?.call(value),
          autovalidateMode: AutovalidateMode.onUserInteraction,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: textColor,
              ),
          decoration: InputDecoration(
            hintText: hint ?? 'Selecione uma data',
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon ??
                Icon(
                  Icons.calendar_today_rounded,
                  color: mutedColor,
                ),
          ),
          onTap: enabled
              ? () async {
                  final picked = await showDatePicker(
                    context: context,
                    initialDate: value ?? DateTime.now(),
                    firstDate: firstDate ?? DateTime(1900),
                    lastDate: lastDate ?? DateTime(2100),
                    builder: (context, child) => Theme(
                      data: Theme.of(context).copyWith(
                        colorScheme: isDark
                            ? const ColorScheme.dark(
                                primary: AppColors.darkPrimary,
                                onPrimary: AppColors.darkPrimaryForeground,
                                surface: AppColors.darkCard,
                                onSurface: AppColors.darkForeground,
                              )
                            : const ColorScheme.light(
                                primary: AppColors.primary,
                                onPrimary: AppColors.primaryForeground,
                                surface: AppColors.card,
                                onSurface: AppColors.foreground,
                              ),
                      ),
                      child: child!,
                    ),
                  );
                  if (picked != null) onChanged?.call(picked);
                }
              : null,
        ),
      ],
    );
  }
}

class MainSearchBar extends StatelessWidget {
  final String? hint;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final bool enabled;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;

  const MainSearchBar({
    super.key,
    this.hint,
    this.controller,
    this.onChanged,
    this.enabled = true,
    this.prefixIcon,
    this.suffixIcon,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final textColor = isDark ? AppColors.darkForeground : AppColors.foreground;
    final mutedColor = isDark ? AppColors.darkMutedForeground : AppColors.mutedForeground;
    final searchFillColor = isDark ? AppColors.darkMuted : AppColors.muted;

    return TextField(
      controller: controller,
      enabled: enabled,
      keyboardType: keyboardType,
      onChanged: onChanged,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: textColor,
          ),
      decoration: InputDecoration(
        hintText: hint ?? 'Buscar...',
        fillColor: searchFillColor, 
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: AppColors.primary, width: 2),
        ),
        prefixIcon: prefixIcon ??
            Icon(
              Icons.search_rounded,
              color: mutedColor,
            ),
        suffixIcon: suffixIcon,
      ),
    );
  }
}