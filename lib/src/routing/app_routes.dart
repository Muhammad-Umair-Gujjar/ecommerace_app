import 'package:get/get.dart';
import '../features/onboarding/onboarding_screen.dart';
import '../../splash_screen.dart';
import '../features/authentication/screens/login_screen.dart';
import '../features/authentication/screens/signup/signup_screen.dart';
import '../features/authentication/screens/forgot_password/forgot_password_screen.dart';
import '../features/authentication/screens/forgot_password/verify_email_screen.dart';
import '../features/authentication/screens/signup/account_success_screen.dart';
import 'route_names.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: RouteNames.splash, page: () => const SplashScreen()),
    GetPage(name: RouteNames.onboarding, page: () => OnboardingScreen()),
    GetPage(name: RouteNames.login, page: () => const LoginScreen()),
    GetPage(name: RouteNames.signup, page: () => const SignupScreen()),
    GetPage(
      name: RouteNames.forgotPassword,
      page: () => const ForgotPasswordScreen(),
    ),
    GetPage(
      name: RouteNames.verifyEmail,
      page: () => const VerifyEmailScreen(),
    ),
    GetPage(
      name: RouteNames.accountSuccess,
      page: () => const AccountSuccessScreen(),
    ),
  ];
}
