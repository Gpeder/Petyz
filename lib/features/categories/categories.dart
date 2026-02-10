import 'package:flutter/material.dart';
import 'package:petyz/features/categories/components/card_categories.dart';
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


