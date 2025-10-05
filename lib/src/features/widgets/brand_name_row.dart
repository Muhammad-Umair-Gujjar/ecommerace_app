import 'package:flutter/material.dart';

class BrandNameRow extends StatelessWidget {
  final String brand;
  final bool showVerified;
  final bool bold;
  final double fontSize;
  final Color color;

  const BrandNameRow({
    Key? key,
    required this.brand,
    this.showVerified = true,
    this.bold = false,
    this.fontSize = 15,
    this.color = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          brand,
          style: TextStyle(
            color: color,
            fontWeight: bold ? FontWeight.bold : FontWeight.w600,
            fontSize: fontSize,
          ),
        ),
        if (showVerified) ...[
          const SizedBox(width: 4),
          const Icon(Icons.verified, color: Colors.blue, size: 18),
        ],
      ],
    );
  }
}
