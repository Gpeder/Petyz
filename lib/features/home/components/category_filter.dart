import 'package:flutter/material.dart';
import 'package:petyz/models/categories.dart';
import 'package:petyz/themes/color_theme.dart';
import 'package:petyz/themes/text_theme.dart';

class CategoryFilter extends StatefulWidget {
  final ValueChanged<Set<String>>? onChanged;
  final Set<String>? selectedCategories;

  const CategoryFilter({
    super.key,
    this.onChanged,
    this.selectedCategories,
  });

  @override
  State<CategoryFilter> createState() => _CategoryFilterState();
}

class _CategoryFilterState extends State<CategoryFilter> {
  final Set<int> _selectedIndexes = {};

  int get _nonTodosCount => categories.length - 1;

  Set<int> _resolveSelectedIndexes(Set<String>? selected) {
    if (selected == null || selected.isEmpty) {
      return {};
    }

    final resolved = <int>{};
    for (var i = 1; i < categories.length; i++) {
      if (selected.contains(categories[i].name)) {
        resolved.add(i);
      }
    }

    return resolved;
  }

  bool get _isTodosActive {
    return _selectedIndexes.isEmpty || _selectedIndexes.length == _nonTodosCount;
  }

  @override
  void initState() {
    super.initState();
    _selectedIndexes.addAll(_resolveSelectedIndexes(widget.selectedCategories));
  }

  @override
  void didUpdateWidget(covariant CategoryFilter oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.selectedCategories != widget.selectedCategories) {
      setState(() {
        _selectedIndexes
          ..clear()
          ..addAll(_resolveSelectedIndexes(widget.selectedCategories));
      });
    }
  }

  void _emitChange() {
    if (widget.onChanged == null) return;

    if (_selectedIndexes.isEmpty || _selectedIndexes.length == _nonTodosCount) {
      widget.onChanged!.call({});
      return;
    }

    final selectedNames = _selectedIndexes
        .map((index) => categories[index].name)
        .toSet();

    widget.onChanged!.call(selectedNames);
  }

  void _handleTap(int index) {
    setState(() {
      if (index == 0) {
        _selectedIndexes.clear();
        _emitChange();
        return;
      }

      if (_selectedIndexes.contains(index)) {
        _selectedIndexes.remove(index);
      } else {
        _selectedIndexes.add(index);
      }

      if (_selectedIndexes.length == _nonTodosCount) {
        _selectedIndexes.clear();
      }

      _emitChange();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Categorias', style: AppTextStyles.text20Bold(context)),
        const SizedBox(height: 10),
        SizedBox(
          height: 40,
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(width: 10),
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final isSelected = index == 0
                  ? _isTodosActive
                  : _selectedIndexes.contains(index);

              return CategoryChipSelector(
                title: categories[index].name,
                icon: categories[index].icon,
                isSelected: isSelected,
                onTap: () => _handleTap(index),
              );
            },
          ),
        ),
      ],
    );
  }
}

class CategoryChipSelector extends StatelessWidget {
  final String title;
  final String icon;
  final bool isSelected;
  final VoidCallback onTap;

  const CategoryChipSelector({
    super.key,
    required this.title,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Chip(
        label: Text(
          '$icon $title',
          style: AppTextStyles.text18Bold(context).copyWith(
            color: isSelected ? AppColors.accent : AppColors.primaryForeground  
          ),
        ),
        backgroundColor: isSelected ? AppColors.primary : AppColors.secondary,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: isSelected ?  AppColors.accent :AppColors.secondary,
            width: 0.5,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
