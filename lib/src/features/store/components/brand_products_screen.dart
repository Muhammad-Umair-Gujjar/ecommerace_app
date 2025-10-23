import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecomerace_app/src/utils/constants/app_colors.dart';
import 'package:ecomerace_app/src/utils/constants/images.dart';
import 'package:ecomerace_app/src/features/main/widgets/product_card.dart';
import 'package:ecomerace_app/src/features/main/widgets/product_grid_view.dart';
import 'package:ecomerace_app/src/features/widgets/brand_info.dart';

class BrandProductsScreen extends StatelessWidget {
  const BrandProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = Get.arguments as Map<String, dynamic>;
    final brandName = args['brandName'] ?? 'Nike';
    final brandLogo = args['brandLogo'] ?? AppImages.nikeLogo;
    final productCount = args['productCount'] ?? 172;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.textPrimary),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Brand',
          style: TextStyle(
            color: AppColors.textPrimary,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
        children: [
          // Brand Header
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Row(
              children: [
                Image.asset(
                  brandLogo,
                  width: 40,
                  height: 40,
                  fit: BoxFit.contain,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            brandName,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: AppColors.textPrimary,
                            ),
                          ),
                          const SizedBox(width: 6),
                          const Icon(
                            Icons.verified,
                            color: Colors.blue,
                            size: 18,
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '$productCount products',
                        style: const TextStyle(
                          fontSize: 14,
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Filter Row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.filter_list,
                          color: AppColors.textSecondary,
                          size: 20,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Filter',
                          style: TextStyle(
                            color: AppColors.textSecondary,
                            fontSize: 14,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: AppColors.textSecondary,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          // Products Grid
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ProductGridView(
                children: [
                  ProductCard(
                    imageUrl: AppImages.productImage7,
                    name: 'Shoes of $brandName',
                    brand: brandName,
                    minPrice: 399,
                    maxPrice: 599,
                    discount: '9%',
                  ),
                  ProductCard(
                    imageUrl: AppImages.productImage7,
                    name: 'Shoes of $brandName',
                    brand: brandName,
                    minPrice: 399,
                    maxPrice: 599,
                    discount: '9%',
                  ),
                  ProductCard(
                    imageUrl: AppImages.productImage7,
                    name: 'Shoes of $brandName',
                    brand: brandName,
                    minPrice: 399,
                    maxPrice: 599,
                    discount: '9%',
                  ),
                  ProductCard(
                    imageUrl: AppImages.productImage7,
                    name: 'Shoes of $brandName',
                    brand: brandName,
                    minPrice: 399,
                    maxPrice: 599,
                    discount: '9%',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
