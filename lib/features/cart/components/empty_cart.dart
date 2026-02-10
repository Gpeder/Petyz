import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:petyz/themes/color_theme.dart';
import 'package:petyz/themes/text_theme.dart';
import 'package:petyz/widgets/main_button.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 150),
          CircleAvatar(
            radius: 40,
            backgroundColor: AppColors.muted,
            child: Icon(
              Ionicons.bag_handle,
              size: 40,
              color: AppColors.mutedForeground,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Seu carrinho está vazio',
            style: AppTextStyles.text20Bold(context),
          ),
          const SizedBox(height: 10),
          Text(
            'Adicione produtos para começar',
            style: AppTextStyles.text16(
              context,
            ).copyWith(color: AppColors.mutedForeground),
          ),
          const SizedBox(height: 20),
          PrimaryButton(
            fullWidth: false,
            label: 'Explorar produtos',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}