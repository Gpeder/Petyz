class ProductModel {
  final String id;
  final String name;
  final double price;
  final String category;
  final String image;
  final double rating;
  final int reviews;
  final String description;

  const ProductModel({
    required this.id,
    required this.name,
    required this.price,
    required this.category,
    required this.image,
    required this.rating,
    required this.reviews,
    required this.description,
  });
}

final productsMock = <ProductModel>[
  ProductModel(
    id: '1',
    name: 'Ração Premium para Cães Adultos',
    price: 189.90,
    category: 'Cães',
    image: 'https://images.unsplash.com/photo-1583337130417-3346a1be7dee',
    rating: 4.8,
    reviews: 124,
    description:
        'Ração super premium com proteínas nobres e vitaminas essenciais para a saúde do seu cão.',
  ),
  ProductModel(
    id: '2',
    name: 'Arranhador de Gato com Torre',
    price: 249.90,
    category: 'Gatos',
    image: 'https://images.unsplash.com/photo-1601758125946-6ec2ef64daf8',
    rating: 4.6,
    reviews: 89,
    description:
        'Arranhador com múltiplos níveis para diversão, descanso e bem-estar do seu gato.',
  ),
  ProductModel(
    id: '3',
    name: 'Coleira Ajustável Anti-Puxão',
    price: 79.90,
    category: 'Acessórios',
    image: 'https://images.unsplash.com/photo-1601758173925-1967c9a6b68c',
    rating: 4.7,
    reviews: 56,
    description:
        'Coleira confortável com ajuste anatômico para passeios mais seguros.',
  ),
  ProductModel(
    id: '4',
    name: 'Cama Ortopédica para Pets Médios',
    price: 219.90,
    category: 'Cães',
    image: 'https://images.unsplash.com/photo-1596495577886-d920f1fb7238',
    rating: 4.9,
    reviews: 211,
    description:
        'Cama ortopédica com espuma de alta densidade para conforto e melhor descanso.',
  ),
  ProductModel(
    id: '5',
    name: 'Comedouro Inox Antiderrapante',
    price: 59.90,
    category: 'Acessórios',
    image: 'https://images.unsplash.com/photo-1619983081563-430f636027a4',
    rating: 4.5,
    reviews: 74,
    description:
        'Comedouro em aço inox com base antiderrapante, fácil de limpar e resistente.',
  ),
  ProductModel(
    id: '6',
    name: 'Areia Higiênica Premium para Gatos',
    price: 69.90,
    category: 'Gatos',
    image: 'https://images.unsplash.com/photo-1625772452859-1c03c2a9d9b1',
    rating: 4.7,
    reviews: 132,
    description: 'Areia higiênica com controle de odores e rápida absorção.',
  ),
  ProductModel(
    id: '7',
    name: 'Brinquedo Mordedor Resistente',
    price: 49.90,
    category: 'Brinquedos',
    image: 'https://images.unsplash.com/photo-1583511655857-d19b40a7a54e',
    rating: 4.6,
    reviews: 98,
    description:
        'Brinquedo em borracha natural para entretenimento e saúde dental.',
  ),
  ProductModel(
    id: '8',
    name: 'Shampoo Neutro para Pets Sensíveis',
    price: 39.90,
    category: 'Higiene',
    image: 'https://images.unsplash.com/photo-1596492784531-6e6eb5ea9993',
    rating: 4.4,
    reviews: 61,
    description:
        'Shampoo suave indicado para peles sensíveis, sem corantes ou parabenos.',
  ),
  ProductModel(
    id: '9',
    name: 'Caixa de Transporte para Pets Pequenos',
    price: 199.90,
    category: 'Acessórios',
    image: 'https://images.unsplash.com/photo-1601758064134-1c65f07f4b29',
    rating: 4.7,
    reviews: 84,
    description:
        'Caixa de transporte resistente, ventilada e confortável para viagens.',
  ),
  ProductModel(
    id: '10',
    name: 'Petiscos Naturais de Frango Desidratado',
    price: 34.90,
    category: 'Petiscos',
    image: 'https://images.unsplash.com/photo-1621939514649-280e2ee25f4b',
    rating: 4.9,
    reviews: 143,
    description:
        'Petiscos 100% naturais, ricos em proteína e ideais para treinamento.',
  ),
  ProductModel(
    id: '11',
    name: 'Tapete Higiênico Ultra Absorvente',
    price: 89.90,
    category: 'Higiene',
    image: 'https://images.unsplash.com/photo-1619983081394-6a4e20d7d28a',
    rating: 4.6,
    reviews: 97,
    description: 'Tapetes com gel super absorvente e controle de odores.',
  ),
  ProductModel(
    id: '12',
    name: 'Guia Retrátil para Passeios',
    price: 99.90,
    category: 'Acessórios',
    image: 'https://images.unsplash.com/photo-1601758174125-06d5b42e0b2b',
    rating: 4.5,
    reviews: 65,
    description: 'Guia retrátil com trava segura e empunhadura ergonômica.',
  ),
  ProductModel(
    id: '13',
    name: 'Fonte Automática de Água para Pets',
    price: 179.90,
    category: 'Acessórios',
    image: 'https://images.unsplash.com/photo-1619983081563-430f636027a4',
    rating: 4.8,
    reviews: 152,
    description: 'Fonte elétrica com fluxo contínuo que estimula a hidratação.',
  ),
  ProductModel(
    id: '14',
    name: 'Ração Grain Free para Gatos Adultos',
    price: 159.90,
    category: 'Gatos',
    image: 'https://images.unsplash.com/photo-1596492784531-6e6eb5ea9993',
    rating: 4.7,
    reviews: 118,
    description:
        'Ração sem grãos, rica em proteínas e ideal para gatos sensíveis.',
  ),
  ProductModel(
    id: '15',
    name: 'Escova Removedora de Pelos',
    price: 44.90,
    category: 'Higiene',
    image: 'https://images.unsplash.com/photo-1583511655857-d19b40a7a54e',
    rating: 4.6,
    reviews: 72,
    description: 'Escova prática que remove pelos mortos e reduz a queda.',
  ),
  ProductModel(
    id: '16',
    name: 'Cinto de Segurança para Transporte Pet',
    price: 29.90,
    category: 'Acessórios',
    image: 'https://images.unsplash.com/photo-1601758064134-1c65f07f4b29',
    rating: 4.4,
    reviews: 49,
    description: 'Cinto ajustável para manter seu pet seguro durante viagens.',
  ),
  ProductModel(
    id: '17',
    name: 'Roupinha Moletom para Pets Pequenos',
    price: 69.90,
    category: 'Roupas',
    image: 'https://images.unsplash.com/photo-1583512603806-077998240c7a',
    rating: 4.5,
    reviews: 58,
    description:
        'Roupinha confortável para dias frios, com tecido macio e ajuste anatômico.',
  ),
  ProductModel(
    id: '18',
    name: 'Brinquedo Interativo com Dispenser de Petiscos',
    price: 89.90,
    category: 'Brinquedos',
    image: 'https://images.unsplash.com/photo-1583511655857-d19b40a7a54e',
    rating: 4.8,
    reviews: 101,
    description:
        'Estimula o raciocínio e mantém o pet entretido por mais tempo.',
  ),
];
