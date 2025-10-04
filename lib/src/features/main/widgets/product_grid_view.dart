import 'package:flutter/material.dart';
import 'product_card.dart';

class ProductGridView extends StatelessWidget {
  final List<Widget> children;
  final int crossAxisCount;
  final double childAspectRatio;
  final double mainAxisSpacing;
  final double crossAxisSpacing;
  final EdgeInsetsGeometry? padding;

  const ProductGridView({
    Key? key,
    required this.children,
    this.crossAxisCount = 2,
    this.childAspectRatio = 0.68,
    this.mainAxisSpacing = 16,
    this.crossAxisSpacing = 16,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding:
          padding ?? const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        mainAxisSpacing: mainAxisSpacing,
        crossAxisSpacing: crossAxisSpacing,
      ),
      itemCount: children.length,
      itemBuilder: (context, index) => children[index],
    );
  }
}
