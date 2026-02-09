import 'package:flutter/material.dart';
import 'package:petyz/models/categories.dart';
import 'package:petyz/themes/color_theme.dart';
import 'package:petyz/themes/text_theme.dart';

class CategoryFilter extends StatelessWidget {
  const CategoryFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text('Categorias', style: AppTextStyles.text20Bold(context)),
        const SizedBox(height: 10),
        SizedBox(
          height: 40,
          child: ListView.separated(
            separatorBuilder: (context, index) =>
                const SizedBox(width: 10),
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return CategoryChipSelector(
                title: categories[index].name,
                icon: categories[index].icon,
              );
            },
          ),
        ),
      ],
    );
  }
}


class CategoryChipSelector extends StatefulWidget {
  final String title;
  final String icon;
  const CategoryChipSelector({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  State<CategoryChipSelector> createState() => _CategoryChipSelectorState();
}

class _CategoryChipSelectorState extends State<CategoryChipSelector> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Chip(
        label: Text(
          '${widget.icon} ${widget.title}',
          style: AppTextStyles.text16Bold(context).copyWith(
            color: isSelected ? AppColors.primaryForeground : AppColors.accent,
          ),
        ),
        backgroundColor: isSelected ? AppColors.secondary : AppColors.primary,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: isSelected ? AppColors.secondary : AppColors.accent,
            width: 0.5,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
