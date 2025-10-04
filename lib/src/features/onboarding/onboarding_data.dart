import '../../utils/constants/images.dart';

class OnboardingPageData {
  final String imagePath;
  final String title;
  final String subtitle;

  const OnboardingPageData({
    required this.imagePath,
    required this.title,
    required this.subtitle,
  });
}

const onboardingPages = [
  OnboardingPageData(
    imagePath: AppImages.onboarding1Animation,
    title: 'Welcome to UP Store',
    subtitle: 'Your one-stop destination for effortless and enjoyable shopping',
  ),
  OnboardingPageData(
    imagePath: AppImages.onboarding2Animation,
    title: 'Shop Everything You Love!',
    subtitle:
        'Discover top-quality products at the best prices\nwith a seamless shopping experience',
  ),
  OnboardingPageData(
    imagePath: AppImages.onboarding3Animation,
    title: 'Fast & Reliable Delivery!',
    subtitle:
        'Get your favorite items delivered to your doorstep,\nanytime, anywhere',
  ),
];
