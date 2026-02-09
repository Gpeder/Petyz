import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petyz/themes/color_theme.dart';
import 'package:petyz/themes/dark/input_decoration_theme.dart';
import 'package:petyz/themes/dark/icon_button_theme.dart';

ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  fontFamily: GoogleFonts.inter().fontFamily,
  scaffoldBackgroundColor: AppColors.darkBackground,
  iconButtonTheme: darkIconButtonTheme,
  inputDecorationTheme: darkInputDecorationTheme,
  colorScheme: const ColorScheme.dark(
    surface: AppColors.darkBackground,
    onSurface: AppColors.darkForeground,
    primary: AppColors.darkPrimary,
    onPrimary: AppColors.darkPrimaryForeground,
    secondary: AppColors.darkSecondary,
    onSecondary: AppColors.darkSecondaryForeground,
    error: AppColors.darkDestructive,
    onError: AppColors.darkDestructiveForeground,
  ),
);
