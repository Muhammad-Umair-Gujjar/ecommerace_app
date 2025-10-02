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
    imagePath: 'assets/images/onboarding/onboarding1.png',
    title: 'Welcome to UP Store',
    subtitle: 'Your one-stop destination for effortless and enjoyable shopping',
  ),
  OnboardingPageData(
    imagePath: 'assets/images/onboarding/onboarding2.png',
    title: 'Shop Everything You Love!',
    subtitle:
        'Discover top-quality products at the best prices\nwith a seamless shopping experience',
  ),
  OnboardingPageData(
    imagePath: 'assets/images/onboarding/onboarding3.png',
    title: 'Fast & Reliable Delivery!',
    subtitle:
        'Get your favorite items delivered to your doorstep,\nanytime, anywhere',
  ),
];
