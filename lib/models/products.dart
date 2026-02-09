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
    image: 'assets/racao.png',
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
    image: 'assets/arranhador torre.png',
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
    image: 'assets/coleira-puxao.png',
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
    image: 'assets/cama ortopedica.png',
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
    image: 'assets/comedouro.png',
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
    image: 'assets/areia gato.png',
    rating: 4.7,
    reviews: 132,
    description: 'Areia higiênica com controle de odores e rápida absorção.',
  ),
  ProductModel(
    id: '7',
    name: 'Brinquedo Mordedor Resistente',
    price: 49.90,
    category: 'Brinquedos',
    image: 'assets/mordedor.png',
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
    image: 'assets/shampoo.png',
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
    image: 'assets/caixa transporte.png',
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
    image: 'assets/petisco desidratado.png',
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
    image: 'assets/tapete higienico.png',
    rating: 4.6,
    reviews: 97,
    description: 'Tapetes com gel super absorvente e controle de odores.',
  ),
  ProductModel(
    id: '12',
    name: 'Guia Retrátil para Passeios',
    price: 99.90,
    category: 'Acessórios',
    image: 'assets/guia.png',
    rating: 4.5,
    reviews: 65,
    description: 'Guia retrátil com trava segura e empunhadura ergonômica.',
  ),
];
