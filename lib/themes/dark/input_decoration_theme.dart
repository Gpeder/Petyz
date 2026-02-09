import 'package:flutter/material.dart';
import 'package:petyz/themes/color_theme.dart';

InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
  filled: true,
  fillColor: AppColors.darkInput,
  isDense: true,
  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
  hintStyle: TextStyle(color: AppColors.darkMutedForeground, fontSize: 16),
  labelStyle: TextStyle(color: AppColors.darkMutedForeground, fontSize: 16),
  errorStyle: TextStyle(color: AppColors.darkDestructive, fontSize: 12),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: const BorderSide(color: AppColors.darkBorder),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: const BorderSide(color: AppColors.darkBorder),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: const BorderSide(color: AppColors.darkPrimary, width: 2),
  ),
  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: const BorderSide(color: AppColors.darkDestructive),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: const BorderSide(color: AppColors.darkDestructive, width: 2),
  ),
);
