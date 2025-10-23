import 'package:ecomerace_app/src/features/store/components/brand_list.dart';
import 'package:ecomerace_app/src/features/widgets/brand_shelf.dart';
import 'package:ecomerace_app/src/features/widgets/section_heading.dart';
import 'package:ecomerace_app/src/features/store/components/store_tab_bar.dart';
import 'package:ecomerace_app/src/utils/constants/images.dart';
import 'package:ecomerace_app/src/utils/helper_function/helper.dart';
import 'package:ecomerace_app/src/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:ecomerace_app/src/features/widgets/curved_header_background.dart';
import 'package:ecomerace_app/src/features/widgets/custom_cart_icon.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<String> _tabs = const [
    'Electronics',
    'Sports',
    'Furniture',
    'Clothes',
    'Electronics',
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Fixed Header with Store title, cart and search
          Stack(
            children: [
              CurvedHeaderBackground(
                height: 200,
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 10,
                    ),
                    child: Column(
                      children: [
                        Row(
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
                            CustomCartIcon(itemCount: 2, onTap: () {}),
                          ],
                        ),
                        const SizedBox(height: 10),
                        // Search bar
                        Material(
                          elevation: 2,
                          borderRadius: BorderRadius.circular(16),
                          child: CustomTextField(
                            hintText: 'Search in Store',
                            prefixIcon: Icons.search_rounded,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

          // Fixed Brands section
          Container(
            color: Colors.white,
            child: Column(
              children: [
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: SectionHeading(
                    title: 'Brands',
                    onViewAll: () {
                      Navigator.pushNamed(context, '/brands');
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 8),
                  child: BrandList(),
                ),
              ],
            ),
          ),

          // Fixed Tab bar
          Container(
            color: Colors.white,
            child: StoreTabBar(controller: _tabController, tabs: _tabs),
          ),

          // Scrollable content
          Expanded(
            child: ListView(
              padding: const EdgeInsets.only(top: 16),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: BrandShelf(
                    brandLogo: AppImages.bataLogo,
                    brandName: 'Bata',
                    productCount: 172,
                    productImages: [
                      AppImages.productImage1,
                      AppImages.productImage2,
                      AppImages.productImage3,
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: BrandShelf(
                    brandLogo: AppImages.appleLogo,
                    brandName: 'Apple',
                    productCount: 172,
                    productImages: [
                      AppImages.productImage4a,
                      AppImages.productImage4b,
                      AppImages.productImage4c,
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: BrandShelf(
                    brandLogo: AppImages.appleLogo,
                    brandName: 'Apple',
                    productCount: 172,
                    productImages: [
                      AppImages.productImage4a,
                      AppImages.productImage4b,
                      AppImages.productImage4c,
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: BrandShelf(
                    brandLogo: AppImages.appleLogo,
                    brandName: 'Apple',
                    productCount: 172,
                    productImages: [
                      AppImages.productImage4a,
                      AppImages.productImage4b,
                      AppImages.productImage4c,
                    ],
                  ),
                ),
                const SizedBox(height: 100), // Extra space at bottom
              ],
            ),
          ),
        ],
      ),
    );
  }
}
