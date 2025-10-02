import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/forgot_password_controller.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../widgets/custom_text_field.dart';
import '../../../../widgets/custom_button.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final ForgotPasswordController controller = Get.put(
    ForgotPasswordController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Get.back(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Forget Password',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'No worries! Enter your registered email address,\nand we’ll help you reset your password',
              style: TextStyle(fontSize: 15, color: AppColors.textSecondary),
            ),
            const SizedBox(height: 40),
            CustomTextField(
              hintText: 'Email',
              prefixIcon: Icons.send,
              controller: controller.emailController,
            ),
            const SizedBox(height: 24),
            Obx(
              () => CustomButton(
                text: controller.isLoading.value ? 'Submitting...' : 'Submit',
                onPressed: controller.isLoading.value
                    ? () {}
                    : controller.submit,
                isPrimary: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
