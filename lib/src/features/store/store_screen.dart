import 'package:ecomerace_app/src/features/store/components/brand_list.dart';
import 'package:ecomerace_app/src/features/widgets/positioned_search_field.dart';
import 'package:ecomerace_app/src/features/widgets/section_heading.dart';
import 'package:ecomerace_app/src/utils/helper_function/helper.dart';
import 'package:ecomerace_app/src/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:ecomerace_app/src/features/widgets/curved_header_background.dart';
import 'package:ecomerace_app/src/features/widgets/custom_cart_icon.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with blue curve and cart icon
            Stack(
              children: [
                CurvedHeaderBackground(
                  height: Helper.getScreenHeight(context) * 0.23,
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Store',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          CustomCartIcon(
                            itemCount: 2,
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // Search bar overlaps header
                Positioned(
                  left: 0,
                  right: 0,
                  top: Helper.getScreenHeight(context) * 0.14,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Material(
                      elevation: 2,
                      borderRadius: BorderRadius.circular(16),
                      child: CustomTextField(
                        hintText: 'Search in Store',
                        prefixIcon: Icons.search_rounded,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SectionHeading(
                title: 'Brands',
                onViewAll: () {},
              ),
            ),
            const SizedBox(height: 8),
            // Brand list
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: BrandList(),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
