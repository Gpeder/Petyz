import 'package:flutter/material.dart';
import 'package:petyz/themes/color_theme.dart';

class CartQuantityButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const CartQuantityButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: AppColors.primary.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(icon, color: AppColors.primary),
      ),
    );
  }
}
