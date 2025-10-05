import 'package:flutter/material.dart';
import 'package:ecomerace_app/src/widgets/rounded_container.dart';
import 'package:ecomerace_app/src/widgets/rounded_image.dart';
import 'package:ecomerace_app/src/widgets/product_name_text.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String brand;
  final bool isFavorite;
  final double minPrice;
  final double maxPrice;
  final String discount;
  final VoidCallback? onTap;
  final VoidCallback? onFavoriteTap;
  final VoidCallback? onAddTap;

  const ProductCard({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.brand,
    required this.minPrice,
    required this.maxPrice,
    this.discount = '',
    this.isFavorite = false,
    this.onTap,
    this.onFavoriteTap,
    this.onAddTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: RoundedContainer(
        backgroundColor: const Color(0xFFF9F9F9),
        // width removed to let GridView control sizing
        radius: 20,
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          if (discount.isNotEmpty)
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.yellow[700],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                discount,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          const Spacer(),
                          GestureDetector(
                            onTap: onFavoriteTap,
                            child: Icon(
                              isFavorite
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: isFavorite ? Colors.red : Colors.black45,
                              size: 24,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Center(
                        child: RoundedImage(
                          imagePath: imageUrl,
                          radius: 16,
                          width: 120,
                          height: 100,
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(height: 8),
                      ProductNameText(name),
                      Row(
                        children: [
                          Text(
                            brand,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                          const SizedBox(width: 4),
                          const Icon(
                            Icons.verified,
                            color: Colors.blue,
                            size: 18,
                          ),
                        ],
                      ),
                      // space for the add button
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 12),
                Text(
                  '24${minPrice.toStringAsFixed(0)} - 24${maxPrice.toStringAsFixed(0)}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Spacer(),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: GestureDetector(
                    onTap: onAddTap,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(18),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 26,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
