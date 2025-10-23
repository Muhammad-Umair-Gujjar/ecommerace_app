import 'package:get/get.dart';
import 'package:ecomerace_app/src/features/profile/controller/profile_controller.dart';
import 'package:ecomerace_app/src/features/profile/controller/address_controller.dart';
import 'package:ecomerace_app/src/features/profile/controller/order_controller.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    // Profile Controllers
    Get.put<ProfileController>(ProfileController(), permanent: true);
    Get.put<AddressController>(AddressController(), permanent: true);
    Get.put<OrderController>(OrderController(), permanent: true);
  }
}
