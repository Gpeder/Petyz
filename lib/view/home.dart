import 'package:flutter/material.dart';
import 'package:petyz/components/home/category_filter.dart';
import 'package:petyz/components/home/hero.dart';
import 'package:petyz/models/products.dart';
import 'package:petyz/themes/color_theme.dart';
import 'package:petyz/themes/text_theme.dart';
import 'package:petyz/widgets/main_productcard.dart';
import 'package:petyz/widgets/main_textfield.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Set<String> selectedCategories = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150),
        child: AppBar(
          backgroundColor: AppColors.background,
          elevation: 0,
          flexibleSpace: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  //? Titulo e subtitulo
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Petyz', style: AppTextStyles.text24Bold(context)),
                      const SizedBox(height: 5),
                      Text(
                        'Tudo para o seu pet 🐾',
                        style: AppTextStyles.text14(context).copyWith(
                          color: AppColors.mutedForeground,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  //? Barra de pesquisa
                  MainSearchBar(hint: 'Buscar produtos'),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            //? Hero
            MainPromotionHero(
              title: 'Promoções',
              subtitle: 'Até 30% off em rações',
              image: 'assets/hero.png',
              textButon: 'Ver ofertas',
              onPressed: () {},
            ),
            const SizedBox(height: 20),
            CategoryFilter(
              selectedCategories: selectedCategories,
              onChanged: (value) {
                setState(() {
                  selectedCategories = value;
                });
              },
            ),
            const SizedBox(height: 20),
            //? Produtos
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
          ],
        ),
      ),
    );
  }
}
