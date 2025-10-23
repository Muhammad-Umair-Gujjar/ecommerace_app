import 'package:ecomerace_app/src/features/main/widgets/product_card.dart';
import 'package:ecomerace_app/src/features/main/widgets/product_grid_view.dart';
import 'package:ecomerace_app/src/utils/constants/app_colors.dart';
import 'package:ecomerace_app/src/utils/constants/images.dart';
import 'package:ecomerace_app/src/utils/helper_function/helper.dart';
import 'package:ecomerace_app/src/features/widgets/section_heading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/home_header.dart';
import 'widgets/home_search_field.dart';

import 'widgets/home_categories_list.dart';
import 'widgets/home_banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with categories and search field overlay
            Stack(
              children: [
                const HomeHeader(),
                const HomeCategoriesList(),
                const HomeSearchField(),
              ],
            ),
            // Banner directly below search field
            HomeBanner(),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SectionHeading(
                title: 'Popular Products',
                onViewAll: () {},
              ),
            ),
            // Product Grid
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ProductGridView(
                children: [
                  ProductCard(
                    imageUrl: AppImages.productImage1,
                    name: 'Apple iPhone 11',
                    brand: 'Apple',
                    minPrice: 399,
                    maxPrice: 599,
                    discount: '40%',
                  ),
                  ProductCard(
                    imageUrl: AppImages.productImage2,
                    name: 'Blue Shoes of Nike',
                    brand: 'Nike',
                    minPrice: 399,
                    maxPrice: 599,
                    discount: '40%',
                  ),
                  // Add more ProductCard widgets as needed
                  ProductCard(
                    imageUrl: AppImages.productImage3,
                    name: 'Apple iPhone 11',
                    brand: 'Apple',
                    minPrice: 399,
                    maxPrice: 599,
                    discount: '40%',
                  ),
                  ProductCard(
                    imageUrl: AppImages.productImage7,
                    name: 'Blue Shoes of Nike',
                    brand: 'Nike',
                    minPrice: 399,
                    maxPrice: 599,
                    discount: '40%',
                  ),
                ],
              ),
            ),

            // Add more content below if needed
          ],
        ),
      ),
    );
  }
}
