import 'package:flutter/material.dart';
import 'package:ecomerace_app/src/features/widgets/brand_name_row.dart';

class BrandInfo extends StatelessWidget {
  final String brandLogo;
  final String brandName;
  final int productCount;
  final bool showVerified;
  final bool bold;
  final double fontSize;
  final Color brandNameColor;
  final double logoSize;
  final EdgeInsetsGeometry? padding;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;

  const BrandInfo({
    Key? key,
    required this.brandLogo,
    required this.brandName,
    required this.productCount,
    this.showVerified = true,
    this.bold = true,
    this.fontSize = 16,
    this.brandNameColor = Colors.black,
    this.logoSize = 32,
    this.padding,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: crossAxisAlignment,
        children: [
          Image.asset(
            brandLogo,
            width: logoSize,
            height: logoSize,
            fit: BoxFit.contain,
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BrandNameRow(
                brand: brandName,
                bold: bold,
                showVerified: showVerified,
                fontSize: fontSize,
                color: brandNameColor,
              ),
              const SizedBox(height: 2),
              Text(
                '$productCount products',
                style: const TextStyle(color: Colors.grey, fontSize: 13),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
