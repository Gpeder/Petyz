import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petyz/themes/color_theme.dart';
import 'package:petyz/themes/light/input_decoration_theme.dart';
import 'package:petyz/themes/light/icon_button_theme.dart';
import 'package:petyz/themes/light/app_bar_theme.dart';

ThemeData lightTheme = ThemeData(
  visualDensity: VisualDensity.compact,
  useMaterial3: true,
  brightness: Brightness.light,
  fontFamily: GoogleFonts.inter().fontFamily,
  scaffoldBackgroundColor: AppColors.background,
  iconButtonTheme: lightIconButtonTheme,
  inputDecorationTheme: lightInputDecorationTheme,
  appBarTheme: lightAppBarTheme,
  colorScheme: const ColorScheme.light(
    surface: AppColors.background,
    onSurface: AppColors.foreground,
    primary: AppColors.primary,
    onPrimary: AppColors.primaryForeground,
    secondary: AppColors.secondary,
    onSecondary: AppColors.secondaryForeground,
    error: AppColors.destructive,
    onError: AppColors.destructiveForeground,
  ),
);
