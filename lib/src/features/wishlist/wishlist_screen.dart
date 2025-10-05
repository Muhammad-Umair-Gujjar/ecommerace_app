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
        'oldPrice': 9.0,
        'price': 3.0,
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
          style: TextStyle(color: Colors.black,letterSpacing: 1, fontWeight: FontWeight.w700),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add, color: Colors.black,),
            onPressed: () {},
          ),
        ],
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.white,//const Color(0xFFF9F9F9),
      body: SingleChildScrollView(
        child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ProductGridView(
                  children: [
                    ProductCard(
                      imageUrl: AppImages.productImage1,
                      name: 'iPhone 11 64GB',
                      brand: 'Apple',
                      minPrice: 3,
                      maxPrice: 5,
                      discount: '49%',
                    ),
                    ProductCard(
                      imageUrl: AppImages.productImage2,
                      name: 'iPhone 11 64GB',
                      brand: 'Apple',
                      minPrice: 3,
                      maxPrice: 5,
                      discount: '49%',
                    ),
                    // Add more ProductCard widgets as needed
                     ProductCard(
                      imageUrl: AppImages.productImage3,
                      name: 'iPhone 11 64GB',
                      brand: 'Apple',
                      minPrice: 3,
                      maxPrice: 5,
                      discount: '49%',
                    ),
                    ProductCard(
                      imageUrl: AppImages.productImage7,
                      name: 'iPhone 11 64GB',
                      brand: 'Apple',
                      minPrice: 3,
                      maxPrice: 5,
                      discount: '49%',
                    ),
                      ProductCard(
                      imageUrl: AppImages.productImage5,
                      name: 'iPhone 11 64GB',
                      brand: 'Apple',
                      minPrice: 3,
                      maxPrice: 5,
                      discount: '49%',
                    ),
                    ProductCard(
                      imageUrl: AppImages.productImage6,
                      name: 'iPhone 11 64GB',
                      brand: 'Apple',
                      minPrice: 3,
                      maxPrice: 5,
                      discount: '49%',
                    ),
                
                  ],
                ),
              ),
      ),
        
      // Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      //   child: ProductGridView(
      //     children: wishlistProducts
      //         .map(
      //           (product) => ProductCard(
      //             imageUrl: product['image'] as String,
      //             name: product['name'] as String,
      //             brand: product['brand'] as String,
      //             minPrice: product['price'] as double,
      //             maxPrice: product['oldPrice'] as double,
      //             discount: product['discount'] as String,
      //             isFavorite: product['isFavorite'] as bool,
      //             onTap: () {},
      //             onFavoriteTap: () {},
      //             onAddTap: () {},
      //           ),
      //         )
      //         .toList(),
      //   ),
      // ),
    
    );
  }
}
