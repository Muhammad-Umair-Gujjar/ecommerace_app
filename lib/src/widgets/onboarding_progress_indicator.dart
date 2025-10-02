import 'package:flutter/material.dart';

class OnboardingProgressIndicator extends StatelessWidget {
  final int currentPage;
  final int pageCount;
  const OnboardingProgressIndicator({
    super.key,
    required this.currentPage,
    required this.pageCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        pageCount,
        (index) => AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 24),
          width: currentPage == index ? 36 : 12,
          height: 7,
          decoration: BoxDecoration(
            color: currentPage == index
                ? const Color(0xFF1565C0)
                : const Color(0xFFD3D3D3),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}
