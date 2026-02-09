import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:ionicons/ionicons.dart';
import 'package:petyz/components/home/category_filter.dart';
import 'package:petyz/components/home/hero.dart';
import 'package:petyz/models/products.dart';
import 'package:petyz/themes/color_theme.dart';
import 'package:petyz/themes/text_theme.dart';
import 'package:petyz/widgets/main_textfield.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Petyz', style: AppTextStyles.text24Bold(context)),
            const SizedBox(height: 5),
            Text(
              'Tudo para o seu pet 🐾',
              style: AppTextStyles.text14(
                context,
              ).copyWith(color: AppColors.mutedForeground),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Column(
          children: [
            //? Barra de pesquisa
            MainSearchBar(hint: 'Buscar produtos'),

            const SizedBox(height: 20),

            //? Hero
            MainPromotionHero(
              title: 'Promoções',
              subtitle: 'Até 30% off em rações',
              image: 'assets/hero.png',
              textButon: 'Ver ofertas',
              onPressed: () {},
            ),
            const SizedBox(height: 20),

            CategoryFilter(),

            const SizedBox(height: 20),

            GridView.builder(
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
                  brand: product.rating.toString(),
                  price: product.price,
                  image: product.image,
                  rating: product.rating,
                  reviews: product.reviews,
                  description: product.description,
                  onPressed: () {},
                );
              },
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class MainProductCard extends StatelessWidget {
  final String id;
  final String name;
  final String category;
  final String brand;
  final double price;
  final String image;
  final double rating;
  final int reviews;
  final String description;
  final VoidCallback onPressed;
  const MainProductCard({
    super.key,
    required this.id,
    required this.name,
    required this.category,
    required this.brand,
    required this.price,
    required this.image,
    required this.rating,
    required this.reviews,
    required this.description,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.border),
            borderRadius: BorderRadius.circular(20),
          ),
          child: GestureDetector(
            onTap: onPressed,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //? Imagem do produto
                AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: AppColors.shadowSoft,
                      color: AppColors.card,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

                //? Descrição do produto
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      //? Marca do produto
                      Text(
                        brand,
                        style: AppTextStyles.text14Bold(
                          context,
                        ).copyWith(color: AppColors.mutedForeground),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      const SizedBox(height: 5),
                      //? Nome do produto
                      Text(
                        name,
                        style: AppTextStyles.text16Bold(context),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      const SizedBox(height: 6),
                      //? Avaliação do produto
                      Row(
                        children: [
                          const Icon(
                            IconlyBold.star,
                            color: Colors.orange,
                            size: 16,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            rating.toString(),
                            style: AppTextStyles.text14(
                              context,
                            ).copyWith(color: AppColors.mutedForeground),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            '($reviews)',
                            style: AppTextStyles.text14(
                              context,
                            ).copyWith(color: AppColors.mutedForeground),
                          ),
                        ],
                      ),
                      const SizedBox(height: 6),
                      //? Preço do produto
                      Text(
                        price.toString(),
                        style: AppTextStyles.text18Bold(
                          context,
                        ).copyWith(color: AppColors.primary),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        //? Chip e Ícone de favorito
        Positioned(
          top: 10,
          left: 8,
          right: 8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Chip(
                label: Text(
                  '25% OFF',
                  style: AppTextStyles.text14Bold(
                    context,
                  ).copyWith(color: Colors.white),
                ),
                backgroundColor: AppColors.primary,
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: AppColors.primary),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Ionicons.heart_outline,
                  color: AppColors.mutedForeground,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
