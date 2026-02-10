import 'package:flutter/material.dart';
import 'package:petyz/themes/color_theme.dart';

IconButtonThemeData lightIconButtonTheme = IconButtonThemeData(
  style: ButtonStyle(
    padding: WidgetStateProperty.all(const EdgeInsets.all(2)),
    backgroundColor: WidgetStateProperty.all(
      AppColors.primary.withValues(alpha: 0.1),
    ),
    shape: WidgetStateProperty.all(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    ),
    iconColor: WidgetStateProperty.all(AppColors.primary),
  ),
);
