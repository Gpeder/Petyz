import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:petyz/themes/color_theme.dart';
import 'package:petyz/themes/text_theme.dart';
import 'package:petyz/widgets/main_card.dart';
import 'package:petyz/widgets/main_animated_listtile.dart';

class GeneralData extends StatelessWidget {
  const GeneralData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final settings = [
      {'title': 'Meus Pedidos', 'icon': Ionicons.cube_outline, 'onTap': () {}},
      {'title': 'Endereços', 'icon': Ionicons.location_outline, 'onTap': () {}},
      {
        'title': 'Métodos de pagamento',
        'icon': Ionicons.card_outline,
        'onTap': () {},
      },
      {
        'title': 'Segurança',
        'icon': Ionicons.shield_checkmark_outline,
        'onTap': () {},
      },
    ];
    return MainCard(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      widget: Column(
        children: List.generate(settings.length, (index) {
          final item = settings[index];
          final bool isLast = index == settings.length - 1;

          return Column(
            children: [
              MainAnimatedListTile(
                onTap: item['onTap'] as VoidCallback,
                horizontalTitleGap: 12,
                leading: Icon(
                  item['icon'] as IconData,
                  color: AppColors.mutedForeground,
                  size: 22,
                ),
                title: Text(
                  item['title'] as String,
                  style: AppTextStyles.text16(context),
                ),
                trailing: const Icon(
                  Ionicons.chevron_forward_outline,
                  size: 16,
                  color: AppColors.mutedForeground,
                ),
              ),
              if (!isLast) const Divider(color: AppColors.border, height: 1),
            ],
          );
        }),
      ),
    );
  }
}