import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:petyz/themes/text_theme.dart';
import 'package:petyz/widgets/main_card.dart';
import 'package:petyz/themes/color_theme.dart';

class PersonalData extends StatelessWidget {
  const PersonalData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MainCard(
      widget: Row(
        children: [
          CircleAvatar(
            backgroundColor: AppColors.primary.withValues(alpha: 0.3),
            radius: 25,
            child: Icon(
              Icons.person,
              size: 25,
              color: AppColors.primary,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Gustavo Peder',
                  style: AppTextStyles.text20Bold(context),
                ),
                const SizedBox(height: 2),
                Text(
                  'gustavo@petyz.com',
                  style: AppTextStyles.text14(
                    context,
                  ).copyWith(color: AppColors.mutedForeground),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Ionicons.pencil_outline,
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}