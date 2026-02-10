import 'package:flutter/material.dart';
import 'package:petyz/themes/color_theme.dart';
import 'package:petyz/themes/text_theme.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, String> categories = {
      'Mais vendidos': '🔥',
      'Promoções': '🏷️',
      'Alimentação': '🥩',
      'Brinquedos': '🎾',
      'Camas': '🛏️',
      'Acessórios': '🎀',
      'Higiene': '🧴',
      'Medicação': '💊',
    };

    return Scaffold(
      appBar: AppBar(
        title: Text('Categorias', style: AppTextStyles.text24Bold(context)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: GridView.builder(
          itemCount: categories.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 1.1,
          ),
          itemBuilder: (context, index) {
            return CardCategorie(
              title: categories.keys.elementAt(index),
              icon: categories.values.elementAt(index),
              onTap: () {},
            );
          },
        ),
      ),
    );
  }
}

class CardCategorie extends StatelessWidget {
  final String title;
  final String icon;
  final VoidCallback onTap;

  const CardCategorie({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          color: AppColors.card,
          boxShadow: AppColors.shadowSoft,
          border: Border.all(color: AppColors.border),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(icon, style: TextStyle(fontSize: 30)),
            const SizedBox(height: 20),
            Text(title, style: AppTextStyles.text20Bold(context), textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
