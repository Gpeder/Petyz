import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:petyz/helper/format.dart';
import 'package:petyz/themes/color_theme.dart';
import 'package:petyz/themes/text_theme.dart';
import 'package:petyz/widgets/main_button.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          title: Text('Carrinho', style: AppTextStyles.text24Bold(context)),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/areia gato.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Areia Higiênica',
                        style: AppTextStyles.text16(context),
                        maxLines: 1,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        MoneyHelper.format(120),
                        textAlign: TextAlign.start,
                        style: AppTextStyles.text18Bold(
                          context,
                        ).copyWith(color: AppColors.primary),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          ActionButton(icon: Ionicons.remove, onTap: () {}),
                          const SizedBox(width: 10),
                          Text(
                            '1',
                            style: AppTextStyles.text16(context),
                          ),
                          const SizedBox(width: 10),
                          ActionButton(icon: Ionicons.add, onTap: () {}),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  const ActionButton({super.key, required this.icon, required this.onTap});

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
