import 'package:ecomerace_app/src/widgets/rounded_container.dart';
import 'package:flutter/material.dart';
import 'package:ecomerace_app/src/features/widgets/brand_name_row.dart';
import 'package:ecomerace_app/src/utils/constants/images.dart';

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
          return RoundedContainer(
            width: 160,
            height: 70,
            radius: 16,
            backgroundColor: Colors.white,
            showBorder: true,
            borderColor: Colors.grey.shade300,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Row(
              children: [
                Image.asset(
                  brand['logo'] as String,
                  width: 32,
                  height: 32,
                  fit: BoxFit.contain,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BrandNameRow(
                        brand: brand['name'] as String,
                        bold: true,
                        showVerified: true,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      const SizedBox(height: 2),
                      Text(
                        '${brand['products']} products',
                        style: const TextStyle(

                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
