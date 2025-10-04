import 'package:ecomerace_app/src/utils/constants/images.dart';
import 'package:ecomerace_app/src/widgets/onboarding_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../contoller/home_banner_controller.dart';

class HomeBanner extends StatelessWidget {
  HomeBanner({super.key});

  final List<String> banners = const [
    AppImages.homeBanner1,
    AppImages.homeBanner2,
    AppImages.homeBanner3,
    AppImages.homeBanner4,
    AppImages.homeBanner5,
  ];

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(
      HomeBannerController(bannerCount: banners.length),
    );
    return Column(
      children: [
        SizedBox(
          height: 180,
          child: PageView.builder(
            itemCount: banners.length,
            controller: controller.pageController,
            onPageChanged: controller.onPageChanged,
            itemBuilder: (context, index) {
              return _BannerCard(imagePath: banners[index]);
            },
          ),
        ),
        Obx(
          () => OnboardingProgressIndicator(
            currentPage: controller.currentIndex.value,
            pageCount: banners.length,
          ),
        ),
      ],
    );
  }
}

class _BannerCard extends StatelessWidget {
  final String imagePath;
  const _BannerCard({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
          width: double.infinity,
        ),
      ),
    );
  }
}
