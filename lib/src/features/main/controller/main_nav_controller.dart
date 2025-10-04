import 'package:get/get.dart';
import 'package:ecomerace_app/src/routes/route_names.dart';

class MainNavController extends GetxController {
  var selectedIndex = 0.obs;

  final List<String> routes = [
    AppRoutes.home,
    AppRoutes.store,
    AppRoutes.wishlist,
    AppRoutes.profile,
  ];

  void onNavTap(int index) {
    selectedIndex.value = index;
    // Do not navigate away for tab switch, just update index
  }
}
