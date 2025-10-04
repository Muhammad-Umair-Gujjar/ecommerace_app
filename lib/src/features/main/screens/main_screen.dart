import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecomerace_app/src/widgets/custom_bottom_nav.dart';
import 'package:ecomerace_app/src/features/main/controller/main_nav_controller.dart';
import 'package:ecomerace_app/src/features/main/screens/home_screen/home_screen.dart';
import 'package:ecomerace_app/src/features/store/store_screen.dart';
import 'package:ecomerace_app/src/features/wishlist/wishlist_screen.dart';
import 'package:ecomerace_app/src/features/profile/profile_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  final List<Widget> _pages = const [
    HomeScreen(),
    StoreScreen(),
    WishlistScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainNavController>(
      init: MainNavController(),
      builder: (controller) {
        return Scaffold(
          body: Obx(
            () => AnimatedSwitcher(
              duration: const Duration(milliseconds: 400),
              child: _pages[controller.selectedIndex.value],
              transitionBuilder: (child, animation) =>
                  FadeTransition(opacity: animation, child: child),
            ),
          ),
          bottomNavigationBar: Obx(
            () => CustomBottomNav(
              selectedIndex: controller.selectedIndex.value,
              onTap: controller.onNavTap,
              isDark: false,
            ),
          ),
        );
      },
    );
  }
}
