import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:petyz/themes/color_theme.dart';
import 'package:petyz/themes/text_theme.dart';
import 'package:petyz/features/cart/cart.dart';
import 'package:petyz/features/categories/categories.dart';
import 'package:petyz/features/favorite/favorite.dart';
import 'package:petyz/features/home/home.dart';
import 'package:petyz/features/profile/profile.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectIndex,
        children: const [
          HomePage(),
          CategoriesPage(),
          CartPage(),
          FavoritePage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: NavigationBar(
          labelTextStyle: WidgetStatePropertyAll(
            AppTextStyles.text14(
              context,
            ).copyWith(color: AppColors.mutedForeground),
          ),
          backgroundColor: AppColors.card,
          indicatorColor: AppColors.primary.withValues(alpha: 0.2),
          selectedIndex: _selectIndex,
          animationDuration: const Duration(milliseconds: 300),
          height: 80,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
          onDestinationSelected: (index) {
            setState(() {
              _selectIndex = index;
            });
          },
          destinations: const [
            NavigationDestination(
              tooltip: 'Home',
              icon: Icon(
                Ionicons.home_outline,
                size: 32,
                color: AppColors.mutedForeground,
              ),
              selectedIcon: Icon(
                Ionicons.home,
                color: AppColors.primary,
                size: 32,
              ),
              label: 'Home',
            ),
            NavigationDestination(
              tooltip: 'Categorias',
              icon: Icon(
                Ionicons.grid_outline,
                size: 32,
                color: AppColors.mutedForeground,
              ),
              selectedIcon: Icon(
                Ionicons.grid,
                color: AppColors.primary,
                size: 32,
              ),
              label: 'Categorias',
            ),
            NavigationDestination(
              tooltip: 'Carrinho',
              icon: Icon(
                Ionicons.cart_outline,
                size: 32,
                color: AppColors.mutedForeground,
              ),
              selectedIcon: Icon(
                Ionicons.cart,
                color: AppColors.primary,
                size: 32,
              ),
              label: 'Carrinho',
            ),
            NavigationDestination(
              tooltip: 'Favoritos',
              icon: Icon(
                Ionicons.heart_outline,
                size: 32,
                color: AppColors.mutedForeground,
              ),
              selectedIcon: Icon(
                Ionicons.heart,
                color: AppColors.primary,
                size: 32,
              ),
              label: 'Favoritos',
            ),
            NavigationDestination(
              tooltip: 'Perfil',
              icon: Icon(
                Ionicons.person_outline,
                size: 32,
                color: AppColors.mutedForeground,
              ),
              selectedIcon: Icon(
                Ionicons.person,
                color: AppColors.primary,
                size: 32,
              ),
              label: 'Perfil',
            ),
          ],
        ),
      ),
    );
  }
}
