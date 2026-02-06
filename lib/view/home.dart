import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:petyz/theme/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Petyz Home', style: Theme.of(context).textTheme.titleMedium),
        actionsPadding: .only(right: 10),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(IconlyLight.buy),
          ),
        ],
      ),
      body: SingleChildScrollView(
          padding: .symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [

            ],
          ),
      )
    );
  }
}

class MainProductCard extends StatelessWidget {
  const MainProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 200,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.border),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              //? Imagem do produto
              Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                  boxShadow: AppColors.shadowSoft,
                  color: AppColors.card,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://images.unsplash.com/photo-1506744038136-46273834b3fb',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
    
              //? Descrição do produtodo
              Padding(
                padding: const .symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    //? Marca do produto
                    Text(
                      'ROYAL CANIN',
                      style: Theme.of(context).textTheme.bodySmall
                          ?.copyWith(
                            color: AppColors.mutedForeground,
                            fontWeight: FontWeight.bold,
                          ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    SizedBox(height: 5),
                    //? Nome do produto
                    Text(
                      'Ração Premium Gold',
                      style: Theme.of(context).textTheme.bodyLarge,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    SizedBox(height: 5),
                    //? Avaliação do produto
                    Row(
                      children: [
                        Icon(
                          IconlyBold.star,
                          color: Colors.orange,
                          size: 16,
                        ),
                        SizedBox(width: 4),
                        Text(
                          '4.5',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        SizedBox(width: 5),
                        Text(
                          '(200)',
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(color: AppColors.mutedForeground),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    //? Preço do produto
                    Text(
                      'R\$ 150,00',
                      style: Theme.of(context).textTheme.titleMedium
                          ?.copyWith(color: AppColors.primary),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
    
        //? Chip e Ícone de favorito
        Positioned(
          top: 10,
          left: 5,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //? Chip de novo/promo
              Chip(
                label: Text(
                  '25% OFF',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                backgroundColor: AppColors.primary,
                padding: .symmetric(horizontal: 8, vertical: 4),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              //? Ícone de favorito
              IconButton(
                onPressed: () {},
                icon: const Icon(IconlyLight.heart),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
