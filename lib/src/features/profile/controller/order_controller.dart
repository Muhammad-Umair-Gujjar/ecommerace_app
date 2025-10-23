import 'package:get/get.dart';

class OrderController extends GetxController {
  // List of orders
  var orders = <OrderModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    // Initialize with sample orders
    orders.addAll([
      OrderModel(
        orderId: 'GYS324',
        status: 'Processing',
        orderDate: '01 Jan 2025',
        deliveryDate: '06 Jan 2025',
        hasNotification: true,
      ),
      OrderModel(
        orderId: 'GYS324',
        status: 'Processing',
        orderDate: '01 Jan 2025',
        deliveryDate: '06 Jan 2025',
        hasNotification: false,
      ),
      OrderModel(
        orderId: 'GYS324',
        status: 'Processing',
        orderDate: '01 Jan 2025',
        deliveryDate: '06 Jan 2025',
        hasNotification: false,
      ),
      OrderModel(
        orderId: 'GYS324',
        status: 'Processing',
        orderDate: '01 Jan 2025',
        deliveryDate: '06 Jan 2025',
        hasNotification: false,
      ),
    ]);
  }
}

class OrderModel {
  String orderId;
  String status;
  String orderDate;
  String deliveryDate;
  bool hasNotification;

  OrderModel({
    required this.orderId,
    required this.status,
    required this.orderDate,
    required this.deliveryDate,
    this.hasNotification = false,
  });
}
