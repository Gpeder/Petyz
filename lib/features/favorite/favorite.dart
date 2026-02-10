import 'package:flutter/material.dart';
import 'package:petyz/models/products.dart';
import 'package:petyz/themes/text_theme.dart';
import 'package:petyz/widgets/main_productcard.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    final favorites = productsMock.where((p) => p.isFavorite ?? false).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Favoritos', style: AppTextStyles.text24Bold(context)),
      ),
      body: favorites.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.favorite_border, size: 64, color: Colors.grey),
                  const SizedBox(height: 16),
                  Text(
                    'Nenhum favorito ainda',
                    style: AppTextStyles.text18(context),
                  ),
                ],
              ),
            )
          : GridView.builder(
              padding: const EdgeInsets.all(20),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 0.56,
              ),
              itemCount: favorites.length,
              itemBuilder: (context, index) {
                final product = favorites[index];
                return MainProductCard(
                  id: product.id,
                  name: product.name,
                  category: product.category,
                  brand: product.brand,
                  price: product.price,
                  image: product.image,
                  rating: product.rating,
                  reviews: product.reviews,
                  description: product.description,
                  onPressed: () {},
                  isFavorite: product.isFavorite,
                  badge: product.badge,
                );
              },
            ),
    );
  }
}
