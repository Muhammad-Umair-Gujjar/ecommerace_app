import 'package:flutter/material.dart';
import 'package:ecomerace_app/src/utils/constants/images.dart';

class CustomCartIcon extends StatelessWidget {
  final int itemCount;
  final VoidCallback? onTap;
  final double size;
  final double badgeSize;

  const CustomCartIcon({
    Key? key,
    this.itemCount = 0,
    this.onTap,
    this.size = 32,
    this.badgeSize = 18,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        IconButton(
          icon: Image.asset(
            AppImages.cart,
            width: size,
            height: size,
            color: Colors.white,
          ),
          onPressed: onTap,
        ),
        if (itemCount > 0)
          Positioned(
            right: 8,
            top: 8,
            child: Container(
              width: badgeSize,
              height: badgeSize,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: Text(
                '$itemCount',
                style: const TextStyle(
                  color: Color(0xFF1565C0),
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
