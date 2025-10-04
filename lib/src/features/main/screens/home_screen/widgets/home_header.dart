import 'package:flutter/material.dart';

import 'package:ecomerace_app/src/utils/constants/app_colors.dart';
import 'package:ecomerace_app/src/utils/helper_function/helper.dart';
import '_header_clipper.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Helper.getScreenHeight(context) * 0.45,
      width: double.infinity,
      child: Stack(
        children: [
          ClipPath(
            clipper: HeaderClipper(),
            child: Container(
              height: Helper.getScreenHeight(context) * 0.5,
              width: double.infinity,
              color: AppColors.primary,
            ),
          ),
          // Top right circle
          Positioned(
            top: -150,
            right: -180,
            child: Container(
              width: Helper.getScreenHeight(context) * 0.4,
              height: Helper.getScreenHeight(context) * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(500),
                color: Colors.white.withOpacity(0.1),
              ),
            ),
          ),
          // Bottom right circle
          Positioned(
            top: 50,
            right: -250,
            child: Container(
              width: Helper.getScreenHeight(context) * 0.4,
              height: Helper.getScreenHeight(context) * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(500),
                color: Colors.white.withOpacity(0.1),
              ),
            ),
          ),
          // Header content
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Good Morning',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Unknown Pro',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                        Positioned(
                          right: 8,
                          top: 8,
                          child: Container(
                            padding: const EdgeInsets.all(4),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: const Text(
                              '2',
                              style: TextStyle(
                                color: Color(0xFF1565C0),
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                const Text(
                  'Popular Categories',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
