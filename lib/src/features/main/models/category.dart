class Category {
  final String name;
  final String iconPath;

  const Category({required this.name, required this.iconPath});
}

final List<Category> categories = [
  Category(name: 'Sports', iconPath: 'assets/icons/categories/sports.png'),
  Category(
    name: 'Furniture',
    iconPath: 'assets/icons/categories/furniture.png',
  ),
  Category(name: 'Laptops', iconPath: 'assets/icons/categories/laptops.png'),
  Category(name: 'Clothes', iconPath: 'assets/icons/categories/clothes.png'),
  Category(name: 'Perfumes', iconPath: 'assets/icons/categories/perfume.png'),
  Category(
    name: 'Cosmetics',
    iconPath: 'assets/icons/categories/cosmetics.png',
  ),
  Category(name: 'Watches', iconPath: 'assets/icons/categories/watch.png'),
  Category(name: 'Soccer', iconPath: 'assets/icons/categories/soccer.png'),
  Category(name: 'Gadgets', iconPath: 'assets/icons/categories/gadgets.png'),
  Category(name: 'Jackets', iconPath: 'assets/icons/categories/jackets.png'),
];
