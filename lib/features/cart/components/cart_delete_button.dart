import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:petyz/themes/color_theme.dart';

class CartDeleteIconButton extends StatelessWidget {
  final VoidCallback onTap;
  const CartDeleteIconButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: AppColors.destructive.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(
          Ionicons.trash_outline,
          color: AppColors.destructive,
          size: 20,
        ),
      ),
    );
  }
}