import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecomerace_app/src/widgets/custom_text_field.dart';
import 'package:ecomerace_app/src/widgets/custom_button.dart';
import 'package:ecomerace_app/src/utils/constants/app_colors.dart';
import 'package:ecomerace_app/src/features/profile/controller/address_controller.dart';

class AddNewAddressScreen extends StatefulWidget {
  const AddNewAddressScreen({Key? key}) : super(key: key);

  @override
  State<AddNewAddressScreen> createState() => _AddNewAddressScreenState();
}

class _AddNewAddressScreenState extends State<AddNewAddressScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _streetController = TextEditingController();
  final TextEditingController _postalCodeController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();
  final AddressController addressController = Get.find<AddressController>();

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _streetController.dispose();
    _postalCodeController.dispose();
    _cityController.dispose();
    _stateController.dispose();
    _countryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.textPrimary),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Add new Address',
          style: TextStyle(
            color: AppColors.textPrimary,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // Name Field
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.primary, width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: CustomTextField(
                hintText: 'Name',
                prefixIcon: Icons.person_outline,
                controller: _nameController,
              ),
            ),

            const SizedBox(height: 16),

            // Phone Number Field
            CustomTextField(
              hintText: 'Phone Number',
              prefixIcon: Icons.phone_outlined,
              controller: _phoneController,
            ),

            const SizedBox(height: 16),

            // Street and Postal Code Row
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: CustomTextField(
                    hintText: 'Street',
                    prefixIcon: Icons.location_on_outlined,
                    controller: _streetController,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  flex: 2,
                  child: CustomTextField(
                    hintText: 'Postal Code',
                    prefixIcon: Icons.local_post_office_outlined,
                    controller: _postalCodeController,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            // City and State Row
            Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    hintText: 'City',
                    prefixIcon: Icons.location_city_outlined,
                    controller: _cityController,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: CustomTextField(
                    hintText: 'State',
                    prefixIcon: Icons.map_outlined,
                    controller: _stateController,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            // Country Field
            CustomTextField(
              hintText: 'Country',
              prefixIcon: Icons.public,
              controller: _countryController,
            ),

            const SizedBox(height: 40),

            // Save Button
            CustomButton(
              text: 'Save',
              onPressed: () {
                // Create new address from form data
                final newAddress = AddressModel(
                  name: _nameController.text,
                  phone: _phoneController.text,
                  address:
                      '${_streetController.text}, ${_cityController.text}, ${_stateController.text} ${_postalCodeController.text}, ${_countryController.text}',
                  isSelected: false,
                );

                // Add the new address via controller
                addressController.addAddress(newAddress);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
