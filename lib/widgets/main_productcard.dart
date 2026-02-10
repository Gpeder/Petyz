import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:lottie/lottie.dart';
import 'package:petyz/helper/format.dart';
import 'package:petyz/models/products.dart';
import 'package:petyz/themes/color_theme.dart';
import 'package:petyz/themes/text_theme.dart';

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
  final bool? isFavorite;
  final ProductBadge? badge;
  final double? discountPercent;

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
    this.isFavorite,
    this.badge,
    this.discountPercent,
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
                          Icon(
                            Ionicons.star,
                            color: AppColors.primary,
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
                        MoneyHelper.format(price),
                        textAlign: TextAlign.start,
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
              badge != null
                  ? ProductBadgeWidget(
                      badge: badge!,
                      discountPercent: badge == ProductBadge.discount
                          ? discountPercent
                          : null,
                    )
                  : const SizedBox(width: 1),
              IconButton(
                onPressed: () {
                  
                },
                icon: Icon(
                  (isFavorite ?? false)
                      ? Ionicons.heart
                      : Ionicons.heart_outline,
                  color: (isFavorite ?? false)
                      ? AppColors.destructive
                      : AppColors.mutedForeground,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ProductBadgeWidget extends StatelessWidget {
  final ProductBadge badge;
  final double? discountPercent;

  const ProductBadgeWidget({
    super.key,
    required this.badge,
    this.discountPercent,
  });

  @override
  Widget build(BuildContext context) {
    if (badge == ProductBadge.bestSeller) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: Color(0XFF5AADD2),
          borderRadius: BorderRadius.circular(999),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 18,
              height: 18,
              child: Lottie.asset(
                'assets/fire.lottie',
                width: 18,
                height: 18,
                repeat: true,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(
                    Ionicons.flame,
                    size: 18,
                    color: Colors.white,
                  );
                },
              ),
            ),
            const SizedBox(width: 6),
            Text(
              'TOP',
              style: AppTextStyles.text14Bold(
                context,
              ).copyWith(color: Colors.white),
            ),
          ],
        ),
      );
    }

    late final String text;

    switch (badge) {
      case ProductBadge.newProduct:
        text = 'NOVO';
        break;
      case ProductBadge.discount:
        text = '${discountPercent?.toInt() ?? 0}% OFF';
        break;
      default:
        text = '';
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: Color(0XFF5AADD2),
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(
        text,
        style: AppTextStyles.text14Bold(context).copyWith(color: Colors.white),
      ),
    );
  }
}
