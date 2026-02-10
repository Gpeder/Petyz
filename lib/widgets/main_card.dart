import 'package:flutter/material.dart';
import 'package:petyz/themes/color_theme.dart';

class MainCard extends StatelessWidget {
  final Widget widget;
  final EdgeInsetsGeometry? padding;
  const MainCard({
    super.key,
    required this.widget,
    this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: AppColors.card,
        boxShadow: AppColors.shadowSoft,
        border: Border.all(color: AppColors.border),
        borderRadius: BorderRadius.circular(12),
      ),
      child: widget,
    );
  }
}
