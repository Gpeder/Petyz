import 'package:flutter/material.dart';
import 'package:petyz/themes/color_theme.dart';

IconButtonThemeData lightIconButtonTheme = IconButtonThemeData(
  style: IconButton.styleFrom(
    foregroundColor: AppColors.mutedForeground,
    backgroundColor: AppColors.card,
    side: const BorderSide(color: AppColors.border, width: 2),
    alignment: Alignment.center,
  ),
);
