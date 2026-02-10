import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:petyz/features/cart/components/cart_delete_button.dart';
import 'package:petyz/features/cart/components/cart_qt_button.dart';
import 'package:petyz/helper/format.dart';
import 'package:petyz/themes/color_theme.dart';
import 'package:petyz/themes/text_theme.dart';

class CartItemTile extends StatelessWidget {
  final String image;
  final String name;
  final double price;
  final int quantity;
  const CartItemTile({
    super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 90,
          height: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: AppTextStyles.text16Bold(context),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              Text(
                MoneyHelper.format(price),
                style: AppTextStyles.text18Bold(
                  context,
                ).copyWith(color: AppColors.primary),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  CartQuantityButton(icon: Ionicons.remove, onTap: () {}),
                  const SizedBox(width: 12),
                  Text(quantity.toString(), style: AppTextStyles.text16(context)),
                  const SizedBox(width: 12),
                  CartQuantityButton(icon: Ionicons.add, onTap: () {}),
                  const Spacer(),
                  CartDeleteIconButton(onTap: () {}),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
