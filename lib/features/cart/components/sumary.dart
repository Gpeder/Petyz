import 'package:flutter/material.dart';
import 'package:petyz/helper/format.dart';
import 'package:petyz/themes/color_theme.dart';
import 'package:petyz/themes/text_theme.dart';

class CartSummary extends StatelessWidget {
  final double subtotal;
  final double shipping;
  final double total;
  const CartSummary({
    super.key,
    required this.subtotal,
    required this.shipping,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border),
        boxShadow: AppColors.shadowSoft
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Subtotal', style: AppTextStyles.text16(context)),
              Text(
                MoneyHelper.format(subtotal),
                style: AppTextStyles.text16(context),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Frete', style: AppTextStyles.text16(context)),
              Text(
                shipping == 0 ? 'Grátis' : MoneyHelper.format(shipping),
                style: AppTextStyles.text16(context).copyWith(
                  color: shipping == 0 ? AppColors.primary : null,
                  fontWeight: shipping == 0 ? FontWeight.bold : null,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Divider(color: AppColors.border, thickness: 0.8),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total', style: AppTextStyles.text16Bold(context)),
              Text(
                MoneyHelper.format(subtotal + shipping),
                style: AppTextStyles.text16Bold(context),
              ),
            ],
          ),
        ],
      ),
    );
  }
}