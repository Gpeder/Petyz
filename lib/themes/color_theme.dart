import 'package:flutter/material.dart';

class AppColors {
  // ===== Light Mode =====
  static const background = Color(0xFFFFFFFF);
  static const foreground = Color(0xFF262626);
  static const card = Color(0xFFFFFFFF);
  static const cardForeground = Color(0xFF262626);
  static const popover = Color(0xFFFFFFFF);
  static const popoverForeground = Color(0xFF262626);

  static const primary = Color(0xFFF59E0B);
  static const primaryForeground = Color(0xFF000000);

  static const secondary = Color(0xFFF3F4F6);
  static const secondaryForeground = Color(0xFF4B5563);

  static const muted = Color(0xFFF9FAFB);
  static const mutedForeground = Color(0xFF6B7280);

  static const accent = Color(0xFFFFFBEB);
  static const accentForeground = Color(0xFF92400E);

  static const destructive = Color(0xFFEF4444);
  static const destructiveForeground = Color(0xFFFFFFFF);

  static const border = Color(0xFFE5E7EB);
  static const input = Color(0xFFE5E7EB);
  static const ring = Color(0xFFF59E0B);

  // ===== Dark Mode =====
  static const darkBackground = Color(0xFF171717);
  static const darkForeground = Color(0xFFE5E5E5);
  static const darkCard = Color(0xFF262626);
  static const darkCardForeground = Color(0xFFE5E5E5);
  static const darkPopover = Color(0xFF262626);
  static const darkPopoverForeground = Color(0xFFE5E5E5);

  static const darkPrimary = Color(0xFFF59E0B);
  static const darkPrimaryForeground = Color(0xFF000000);

  static const darkSecondary = Color(0xFF262626);
  static const darkSecondaryForeground = Color(0xFFE5E5E5);

  static const darkMuted = Color(0xFF1F1F1F);
  static const darkMutedForeground = Color(0xFFA3A3A3);

  static const darkAccent = Color(0xFF92400E);
  static const darkAccentForeground = Color(0xFFFDE68A);

  static const darkDestructive = Color(0xFFEF4444);
  static const darkDestructiveForeground = Color(0xFFFFFFFF);

  static const darkBorder = Color(0xFF404040);
  static const darkInput = Color(0xFF404040);
  static const darkRing = Color(0xFFF59E0B);

  static final shadowSoft = [
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.06),
      offset: const Offset(0, 4),
      blurRadius: 12,
      spreadRadius: -2,
    ),
  ];

  static Color? get darkTextPrimary => null;
}

