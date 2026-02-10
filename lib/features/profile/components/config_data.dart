import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:petyz/themes/color_theme.dart';
import 'package:petyz/themes/text_theme.dart';
import 'package:petyz/widgets/main_card.dart';

class ConfigData extends StatelessWidget {
  const ConfigData({super.key});

  @override
  Widget build(BuildContext context) {
    return MainCard(
      padding: .symmetric(horizontal: 20, vertical: 10),
      widget: ListTile(
        onTap: () {},
        contentPadding: EdgeInsets.zero,
        horizontalTitleGap: 12,
        leading: Icon(
          Ionicons.settings_outline,
          color: AppColors.mutedForeground,
          size: 22,
        ),
        title: Text(
          'Configurações',
          style: AppTextStyles.text16(context),
        ),
        trailing: const Icon(
          Ionicons.chevron_forward_outline,
          size: 16,
          color: AppColors.mutedForeground,
        ),
      ),
    );
  }
}