import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../utils/constants/app_colors.dart';

class SocialButtonsRow extends StatelessWidget {
  const SocialButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.inputBorder, width: 1),
          ),
          child: Center(
            child: SvgPicture.asset(
              'assets/icons/icons_google.svg',
              width: 24,
              height: 24,
            ),
          ),
        ),
        const SizedBox(width: 24),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.inputBorder, width: 1),
          ),
          child: const Center(
            child: Icon(Icons.facebook, color: AppColors.primary, size: 28),
          ),
        ),
      ],
    );
  }
}
