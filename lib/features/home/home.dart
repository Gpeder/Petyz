import 'package:flutter/material.dart';
import 'package:petyz/features/home/components/category_filter.dart';
import 'package:petyz/features/home/components/grid_products.dart';
import 'package:petyz/features/home/components/hero.dart';
import 'package:petyz/themes/color_theme.dart';
import 'package:petyz/themes/text_theme.dart';
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
                        style: AppTextStyles.text14(
                          context,
                        ).copyWith(color: AppColors.mutedForeground),
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

            //? Filtros
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
            GridHomeProducts(),
          ],
        ),
      ),
    );
  }
}
