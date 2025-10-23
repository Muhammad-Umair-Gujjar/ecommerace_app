import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecomerace_app/src/utils/constants/app_colors.dart';
import 'package:ecomerace_app/src/utils/constants/images.dart';
import 'package:ecomerace_app/src/routing/route_names.dart';
import 'package:ecomerace_app/src/features/widgets/brand_info.dart';
import 'package:ecomerace_app/src/widgets/rounded_container.dart';

class BrandsScreen extends StatelessWidget {
  const BrandsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final brands = [
      {'logo': AppImages.bataLogo, 'name': 'Bata', 'products': 172},
      {'logo': AppImages.bataLogo, 'name': 'Bata', 'products': 172},
      {'logo': AppImages.bataLogo, 'name': 'Bata', 'products': 172},
      {'logo': AppImages.bataLogo, 'name': 'Bata', 'products': 172},
      {'logo': AppImages.bataLogo, 'name': 'Bata', 'products': 172},
      {'logo': AppImages.bataLogo, 'name': 'Bata', 'products': 172},
      {'logo': AppImages.bataLogo, 'name': 'Bata', 'products': 172},
      {'logo': AppImages.bataLogo, 'name': 'Bata', 'products': 172},
    ];

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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Brands',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.textSecondary,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2.5,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                ),
                itemCount: brands.length,
                itemBuilder: (context, index) {
                  final brand = brands[index];
                  return GestureDetector(
                    onTap: () {
                      Get.toNamed(
                        RouteNames.brandProducts,
                        arguments: {
                          'brandName': brand['name'],
                          'brandLogo': brand['logo'],
                          'productCount': brand['products'],
                        },
                      );
                    },
                    child: RoundedContainer(
                      radius: 16,
                      backgroundColor: Colors.white,
                      showBorder: true,
                      borderColor: Colors.grey.shade300,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                      child: BrandInfo(
                        brandLogo: brand['logo'] as String,
                        brandName: brand['name'] as String,
                        productCount: brand['products'] as int,
                        showVerified: true,
                        bold: true,
                        fontSize: 14,
                        brandNameColor: Colors.black,
                        logoSize: 28,
                        padding: EdgeInsets.zero,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
