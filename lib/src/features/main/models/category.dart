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
  Category(
    name: 'Laptops',
    iconPath: 'assets/icons/categories/laptops.png',
  ),
  Category(name: 'Clothes', iconPath: 'assets/icons/categories/clothes.png'),
  Category(name: 'Perfumes', iconPath: 'assets/icons/categories/perfumes.png'),
  Category(name: 'Cosmetics', iconPath: 'assets/icons/categories/cosmetics.png'),
  Category(name: 'Watches', iconPath: 'assets/icons/categories/watch.png'),
  Category(name: 'Toys', iconPath: 'assets/icons/categories/toys.png'),
  Category(name: 'Jewelry', iconPath: 'assets/icons/categories/jewelry.png'),
  Category(name: 'Home', iconPath: 'assets/icons/categories/home.png'),
];
