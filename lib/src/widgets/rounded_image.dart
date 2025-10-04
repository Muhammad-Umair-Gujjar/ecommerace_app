import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  final String imagePath;
  final double radius;
  final double? width;
  final double? height;
  final BoxFit fit;
  final EdgeInsetsGeometry? margin;

  const RoundedImage({
    Key? key,
    required this.imagePath,
    this.radius = 12,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Image.asset(imagePath, width: width, height: height, fit: fit),
      ),
    );
  }
}
