import 'package:ecomerace_app/src/features/main/screens/main_screen.dart';
import 'package:ecomerace_app/src/features/store/store_screen.dart';
import 'package:ecomerace_app/src/features/wishlist/wishlist_screen.dart';
import 'package:ecomerace_app/src/features/profile/profile_screen.dart';
import 'package:ecomerace_app/src/features/profile/components/edit_profile_screen.dart';
import 'package:ecomerace_app/src/features/profile/components/change_name_screen.dart';
import 'package:ecomerace_app/src/features/profile/components/addresses_screen.dart';
import 'package:ecomerace_app/src/features/profile/components/add_new_address_screen.dart';
import 'package:ecomerace_app/src/features/profile/components/orders_screen.dart';
import 'package:ecomerace_app/src/features/main/widgets/product_detail_screen.dart';
import 'package:ecomerace_app/src/features/store/components/brands_screen.dart';
import 'package:ecomerace_app/src/features/store/components/brand_products_screen.dart';
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
    GetPage(name: RouteNames.home, page: () => const MainScreen()),
    GetPage(name: RouteNames.store, page: () => const StoreScreen()),
    GetPage(name: RouteNames.wishlist, page: () => const WishlistScreen()),
    GetPage(name: RouteNames.profile, page: () => const ProfileScreen()),
    GetPage(
      name: RouteNames.editProfile,
      page: () => const EditProfileScreen(),
    ),
    GetPage(name: RouteNames.changeName, page: () => const ChangeNameScreen()),
    GetPage(name: RouteNames.addresses, page: () => const AddressesScreen()),
    GetPage(
      name: RouteNames.addAddress,
      page: () => const AddNewAddressScreen(),
    ),
    GetPage(name: RouteNames.orders, page: () => const OrdersScreen()),
    GetPage(
      name: RouteNames.productDetail,
      page: () {
        final args = Get.arguments as Map<String, dynamic>;
        return ProductDetailScreen(
          productId: args['productId'] ?? '',
          name: args['name'] ?? '',
          brand: args['brand'] ?? '',
          originalPrice: args['originalPrice'] ?? 0.0,
          salePrice: args['salePrice'] ?? 0.0,
          discount: args['discount'] ?? '',
          images: args['images'] ?? [],
          description: args['description'] ?? '',
          colors: args['colors'],
          sizes: args['sizes'],
          inStock: args['inStock'] ?? true,
          productType: args['productType'] ?? 'general',
        );
      },
    ),
    GetPage(name: RouteNames.brands, page: () => const BrandsScreen()),
    GetPage(
      name: RouteNames.brandProducts,
      page: () => const BrandProductsScreen(),
    ),
  ];
}
