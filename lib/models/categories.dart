class Category {
  final String name;
  final String icon;

  Category({
    required this.name,
    required this.icon,
  });
}

final List<Category> categories = [
  Category(name: 'Todos', icon: '🐾'),
  Category(name: 'Alimentação', icon: '🥩'),
  Category(name: 'Brinquedos', icon: '🧸'),
  Category(name: 'Camas', icon: '🛏️'),
  Category(name: 'Higiene', icon: '🧼'),
  Category(name: 'Saúde', icon: '💊'),
];
