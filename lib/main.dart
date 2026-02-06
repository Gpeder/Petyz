import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petyz/theme/theme.dart';
import 'package:petyz/view/home.dart';

void main() {
  runApp(const PetyzApp());
}

class PetyzApp extends StatelessWidget {
  const PetyzApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Petyz',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        fontFamily: GoogleFonts.inter().fontFamily,
        scaffoldBackgroundColor: AppColors.background,
        textTheme: _buildPetyzTextTheme(AppColors.foreground),
        
        iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(
            foregroundColor: AppColors.mutedForeground,
            backgroundColor: AppColors.card,
            side: const BorderSide(color: AppColors.border, width: 2),
            alignment: Alignment.center,
          ),
        ),

        inputDecorationTheme: InputDecorationTheme(
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
        ),

        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.background,
          elevation: 0,
        ),
      ),

      // --- TEMA ESCURO ---
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.inter().fontFamily,
        scaffoldBackgroundColor: AppColors.darkBackground,
        textTheme: _buildPetyzTextTheme(AppColors.darkForeground),

        iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(
            foregroundColor: AppColors.darkCardForeground,
            backgroundColor: AppColors.darkCard,
            side: const BorderSide(color: AppColors.darkBorder, width: 1),
            alignment: Alignment.center,
          ),
        ),

        inputDecorationTheme: InputDecorationTheme(
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
        ),
      ),
    );
  }
}

// --- FUNÇÃO DE TEXTO ---
TextTheme _buildPetyzTextTheme(Color color) {
  return TextTheme(
    bodySmall: TextStyle(fontSize: 14, color: color, fontWeight: FontWeight.normal),
    bodyMedium: TextStyle(fontSize: 16, color: color, fontWeight: FontWeight.normal),
    bodyLarge: TextStyle(fontSize: 16, color: color, fontWeight: FontWeight.w500),
    titleSmall: TextStyle(fontSize: 18, color: color, fontWeight: FontWeight.w500),
    titleMedium: TextStyle(fontSize: 20, color: color, fontWeight: FontWeight.w500),
    titleLarge: TextStyle(fontSize: 24, color: color, fontWeight: FontWeight.w500),
  );
}