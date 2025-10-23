import 'package:flutter/material.dart';
import 'package:ecomerace_app/src/widgets/rounded_container.dart';
import 'package:ecomerace_app/src/features/widgets/brand_info.dart';

class BrandShelf extends StatelessWidget {
   final String brandLogo;
  final String brandName;
  final int productCount;
  final List<String> productImages;
  const BrandShelf({
    Key? key,
    required this.brandLogo,
    required this.brandName,
    required this.productCount,
    required this.productImages,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      radius: 16,
      height: 200,
      backgroundColor: Colors.white,
      showBorder: true,
      borderColor: Colors.grey.shade300,
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BrandInfo(
            brandLogo: brandLogo,
            brandName: brandName,
            productCount: productCount,
            showVerified: true,
            bold: true,
            fontSize: 18,
            brandNameColor: Colors.black,
            logoSize: 40,
            padding: EdgeInsets.zero,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: productImages.map((img) => Padding(
              padding: const EdgeInsets.only(right: 12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  img,
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            )).toList(),
          ),
        ],
      ),
    );
  }
}
