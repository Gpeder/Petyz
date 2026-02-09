import 'package:flutter/material.dart';
import 'package:petyz/themes/color_theme.dart';

InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
  filled: true,
  fillColor: AppColors.input,
  isDense: true,
  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
  hintStyle: TextStyle(color: AppColors.mutedForeground, fontSize: 16),
  labelStyle: TextStyle(color: AppColors.mutedForeground, fontSize: 16),
  errorStyle: TextStyle(color: AppColors.destructive, fontSize: 12),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: const BorderSide(color: AppColors.border),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: const BorderSide(color: AppColors.border),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: const BorderSide(color: AppColors.primary, width: 2),
  ),
  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: const BorderSide(color: AppColors.destructive),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: const BorderSide(color: AppColors.destructive, width: 2),
  ),
);
