import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:lottie/lottie.dart';
import '../../utils/constants/images.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/onboarding_progress_indicator.dart';
import '../authentication/screens/login_screen.dart';
import '../../routing/route_names.dart';
import 'onboarding_data.dart';
import 'controller/onboarding_controller.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  final PageController _controller = PageController();
  final OnboardingController onboardingController = Get.put(
    OnboardingController(),
  );

  void _onNext() {
    final currentPage = onboardingController.currentPage.value;
    if (currentPage < onboardingPages.length - 1) {
      _controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Get.offAllNamed(RouteNames.login);
    }
  }

  void _onSkip() {
    _controller.animateToPage(
      onboardingPages.length - 1,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: _onSkip,
                child: const Text(
                  'Skip',
                  style: TextStyle(color: Color(0xFF1565C0), fontSize: 16),
                ),
              ),
            ),
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: onboardingPages.length,
                onPageChanged: (index) => onboardingController.setPage(index),
                itemBuilder: (context, index) {
                  final page = onboardingPages[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(page.imagePath, height: 220),
                        const SizedBox(height: 32),
                        Text(
                          page.title,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 12),
                        Text(
                          page.subtitle,
                          style: const TextStyle(
                            fontSize: 15,
                            color: Color(0xFF212121),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 24),
                        Obx(
                          () => OnboardingProgressIndicator(
                            currentPage: onboardingController.currentPage.value,
                            pageCount: onboardingPages.length,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Obx(() {
                final isLast =
                    onboardingController.currentPage.value ==
                    onboardingPages.length - 1;
                return CustomButton(
                  text: isLast ? 'Get Started' : 'Next',
                  onPressed: _onNext,
                  isPrimary: true,
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
