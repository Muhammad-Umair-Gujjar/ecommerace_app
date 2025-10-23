import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecomerace_app/src/widgets/custom_text_field.dart';
import 'package:ecomerace_app/src/widgets/custom_button.dart';
import 'package:ecomerace_app/src/utils/constants/app_colors.dart';
import 'package:ecomerace_app/src/features/profile/controller/profile_controller.dart';

class ChangeNameScreen extends StatefulWidget {
  const ChangeNameScreen({Key? key}) : super(key: key);

  @override
  State<ChangeNameScreen> createState() => _ChangeNameScreenState();
}

class _ChangeNameScreenState extends State<ChangeNameScreen> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final ProfileController profileController = Get.find<ProfileController>();

  @override
  void initState() {
    super.initState();
    // Pre-populate with current name
    _firstNameController.text = profileController.firstName.value;
    _lastNameController.text = profileController.lastName.value;
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
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
          'Change Name',
          style: TextStyle(
            color: AppColors.textPrimary,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Update your name to keep your profile accurate and personalized',
              style: TextStyle(
                fontSize: 14,
                color: AppColors.textSecondary,
                height: 1.4,
              ),
            ),

            const SizedBox(height: 32),

            // First Name Field
            CustomTextField(
              hintText: 'First Name',
              prefixIcon: Icons.person_outline,
              controller: _firstNameController,
            ),

            const SizedBox(height: 16),

            // Last Name Field
            CustomTextField(
              hintText: 'Last Name',
              prefixIcon: Icons.person_outline,
              controller: _lastNameController,
            ),

            const Spacer(),

            // Save Button
            CustomButton(
              text: 'Save',
              onPressed: () {
                // Update name via controller and navigate back
                profileController.updateName(
                  _firstNameController.text,
                  _lastNameController.text,
                );
                Navigator.pop(context);
              },
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
