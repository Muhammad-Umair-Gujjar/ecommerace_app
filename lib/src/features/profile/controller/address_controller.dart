import 'package:get/get.dart';

class AddressController extends GetxController {
  // List of addresses
  var addresses = <AddressModel>[].obs;
  var selectedAddressIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    // Initialize with sample addresses
    addresses.addAll([
      AddressModel(
        name: 'Unknown Pro',
        phone: '+921234567890',
        address: 'House No 295, Hyderabad, Sindh, Pakistan',
        isSelected: true,
      ),
      AddressModel(
        name: 'Unknown Pro',
        phone: '+921234567890',
        address: 'House No 295, Hyderabad, Sindh, Pakistan',
        isSelected: false,
      ),
      AddressModel(
        name: 'Unknown Pro',
        phone: '+921234567890',
        address: 'House No 295, Hyderabad, Sindh, Pakistan',
        isSelected: false,
      ),
      AddressModel(
        name: 'Unknown Pro',
        phone: '+921234567890',
        address: 'House No 295, Hyderabad, Sindh, Pakistan',
        isSelected: false,
      ),
    ]);
  }

  // Select an address
  void selectAddress(int index) {
    // Deselect all addresses first
    for (int i = 0; i < addresses.length; i++) {
      addresses[i].isSelected = false;
    }
    // Select the chosen address
    addresses[index].isSelected = true;
    selectedAddressIndex.value = index;
    addresses.refresh();
  }

  // Add new address
  void addAddress(AddressModel address) {
    addresses.add(address);
  }

  // Remove address
  void removeAddress(int index) {
    addresses.removeAt(index);
  }
}

class AddressModel {
  String name;
  String phone;
  String address;
  bool isSelected;

  AddressModel({
    required this.name,
    required this.phone,
    required this.address,
    this.isSelected = false,
  });
}
