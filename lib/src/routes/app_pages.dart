import 'package:get/get.dart';
import 'package:ecomerace_app/src/features/main/screens/main_screen.dart';
import 'package:ecomerace_app/src/features/store/store_screen.dart';
import 'package:ecomerace_app/src/features/wishlist/wishlist_screen.dart';
import 'package:ecomerace_app/src/features/profile/profile_screen.dart';
import 'route_names.dart';

class AppPages {
  static final routes = [
    GetPage(name: AppRoutes.home, page: () => const MainScreen()),
    GetPage(name: AppRoutes.store, page: () => const StoreScreen()),
    GetPage(name: AppRoutes.wishlist, page: () => const WishlistScreen()),
    GetPage(name: AppRoutes.profile, page: () => const ProfileScreen()),
  ];
}
