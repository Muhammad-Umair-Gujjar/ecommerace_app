import 'package:ecomerace_app/src/features/widgets/brand_info.dart';
import 'package:ecomerace_app/src/widgets/rounded_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecomerace_app/src/features/widgets/brand_name_row.dart';
import 'package:ecomerace_app/src/utils/constants/images.dart';
import 'package:ecomerace_app/src/routing/route_names.dart';

class BrandList extends StatelessWidget {
  const BrandList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final brands = [
      {'logo': AppImages.bataLogo, 'name': 'Bata', 'products': 172},
      {'logo': AppImages.nikeLogo, 'name': 'Nike', 'products': 172},
      {'logo': AppImages.appleLogo, 'name': 'Apple', 'products': 172},
      {'logo': AppImages.adidasLogo, 'name': 'Adidas', 'products': 172},
      {'logo': AppImages.poloLogo, 'name': 'Polo', 'products': 172},
    ];

    return SizedBox(
      height: 80,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        itemCount: brands.length,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
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
              width: 160,
              height: 70,
              radius: 16,
              backgroundColor: Colors.white,
              showBorder: true,
              borderColor: Colors.grey.shade300,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: BrandInfo(
                brandLogo: brand['logo'] as String,
                brandName: brand['name'] as String,
                productCount: brand['products'] as int,
                showVerified: true,
                bold: true,
                fontSize: 16,
                brandNameColor: Colors.black,
                logoSize: 32,
                padding: EdgeInsets.zero,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
              ),
            ),
          );
        },
      ),
    );
  }
}
