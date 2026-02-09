import 'package:flutter/material.dart';
import 'package:petyz/themes/color_theme.dart';

IconButtonThemeData darkIconButtonTheme = IconButtonThemeData(
  style: IconButton.styleFrom(
    foregroundColor: AppColors.darkCardForeground,
    backgroundColor: AppColors.darkCard,
    side: const BorderSide(color: AppColors.darkBorder, width: 1),
    alignment: Alignment.center,
  ),
);
