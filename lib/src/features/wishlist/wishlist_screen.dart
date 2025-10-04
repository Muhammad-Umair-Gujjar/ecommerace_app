import 'package:flutter/material.dart';
import 'package:ecomerace_app/src/features/main/widgets/product_grid_view.dart';
import 'package:ecomerace_app/src/features/main/widgets/product_card.dart';
import 'package:ecomerace_app/src/utils/constants/images.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final wishlistProducts = [
      {
        'image': AppImages.productImage8,
        'name': 'Shoes of Nike',
        'brand': 'Nike',
        'oldPrice': 599.0,
        'price': 399.0,
        'discount': '9%',
        'isFavorite': true,
      },
      {
        'image': AppImages.productImage5,
        'name': 'Shoes of Nike',
        'brand': 'Nike',
        'oldPrice': 599.0,
        'price': 399.0,
        'discount': '9%',
        'isFavorite': true,
      },
      {
        'image': AppImages.productImage6,
        'name': 'Shoes of Nike',
        'brand': 'Nike',
        'oldPrice': 599.0,
        'price': 399.0,
        'discount': '9%',
        'isFavorite': true,
      },
      {
        'image': AppImages.productImage7,
        'name': 'Shoes of Nike',
        'brand': 'Nike',
        'oldPrice': 599.0,
        'price': 399.0,
        'discount': '9%',
        'isFavorite': true,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Wishlist',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add, color: Colors.black),
            onPressed: () {},
          ),
        ],
        automaticallyImplyLeading: false,
      ),
      backgroundColor: const Color(0xFFF9F9F9),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: ProductGridView(
          children: wishlistProducts
              .map(
                (product) => ProductCard(
                  imageUrl: product['image'] as String,
                  name: product['name'] as String,
                  brand: product['brand'] as String,
                  minPrice: product['price'] as double,
                  maxPrice: product['oldPrice'] as double,
                  discount: product['discount'] as String,
                  isFavorite: product['isFavorite'] as bool,
                  onTap: () {},
                  onFavoriteTap: () {},
                  onAddTap: () {},
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
