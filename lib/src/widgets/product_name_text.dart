import 'package:flutter/material.dart';
import '../widgets/rounded_container.dart';
import '../widgets/rounded_image.dart';

class ProductNameText extends StatelessWidget {
  final String name;
  final bool large;
  const ProductNameText(this.name, {this.large = false, Key? key})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: large ? 28 : 16,
        color: Colors.black,
      ),
    );
  }
}
