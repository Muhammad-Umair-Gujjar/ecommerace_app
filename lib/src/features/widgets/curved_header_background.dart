import 'package:flutter/material.dart';
import 'package:ecomerace_app/src/utils/constants/app_colors.dart';
import 'package:ecomerace_app/src/features/widgets/_header_clipper.dart';
import 'package:ecomerace_app/src/utils/helper_function/helper.dart';

class CurvedHeaderBackground extends StatelessWidget {
  final double? height;
  final Widget? child;
  const CurvedHeaderBackground({Key? key, this.height, this.child})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double headerHeight =
        height ?? Helper.getScreenHeight(context) * 0.45;
    return SizedBox(
      height: headerHeight,
      width: double.infinity,
      child: Stack(
        children: [
          ClipPath(
            clipper: HeaderClipper(),
            child: Container(
              height: headerHeight + 40,
              width: double.infinity,
              color: AppColors.primary,
            ),
          ),
          // Top right circle
          Positioned(
            top: -150,
            right: -180,
            child: Container(
              width: Helper.getScreenHeight(context) * 0.4,
              height: Helper.getScreenHeight(context) * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(500),
                color: Colors.white.withOpacity(0.1),
              ),
            ),
          ),
          // Bottom right circle
          Positioned(
            top: 50,
            right: -250,
            child: Container(
              width: Helper.getScreenHeight(context) * 0.4,
              height: Helper.getScreenHeight(context) * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(500),
                color: Colors.white.withOpacity(0.1),
              ),
            ),
          ),
          if (child != null) child!,
        ],
      ),
    );
  }
}
