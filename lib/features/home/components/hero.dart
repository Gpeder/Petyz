import 'package:flutter/material.dart';
import 'package:petyz/themes/color_theme.dart';
import 'package:petyz/themes/text_theme.dart';

class MainPromotionHero extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final String textButon;
  final VoidCallback onPressed;

  const MainPromotionHero({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.textButon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      padding: .symmetric(horizontal: 24, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: AppColors.shadowSoft,
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: Column(
        crossAxisAlignment: .start,
        mainAxisAlignment: .end,
        children: [
          Text(
            title,
            style: AppTextStyles.text16Bold(
              context,
            ).copyWith(color: AppColors.accent),
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.45,
            child: Text(
              subtitle,
              style: AppTextStyles.text22Bold(
                context,
              ).copyWith(color: AppColors.accent),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              foregroundColor: AppColors.accent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              padding: .symmetric(horizontal: 20, vertical: 15),
              textStyle: AppTextStyles.text18Bold(context),
            ),
            onPressed: onPressed,
            child: Text(
              textButon,
              style: AppTextStyles.text16Bold(
                context,
              ).copyWith(color: AppColors.accent),
            ),
          ),
        ],
      ),
    );
  }
}