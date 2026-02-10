import 'package:flutter/material.dart';
import 'package:petyz/models/products.dart';
import 'package:petyz/widgets/main_productcard.dart';

class GridHomeProducts extends StatelessWidget {
  const GridHomeProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        childAspectRatio: 0.56,
      ),
      itemCount: productsMock.length,
      itemBuilder: (context, index) {
        final product = productsMock[index];
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
    );
  }
}