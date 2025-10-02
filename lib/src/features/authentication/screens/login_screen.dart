import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/login_controller.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../widgets/custom_text_field.dart';
import '../../../widgets/custom_button.dart';
import '../component/social_buttons_row.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Shop Smarter',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Log in to Access Exclusive Deals and Simplify Your Shopping Experience',
                style: TextStyle(fontSize: 15, color: AppColors.textSecondary),
              ),
              const SizedBox(height: 32),
              CustomTextField(
                hintText: 'Email',
                prefixIcon: Icons.send,
                controller: controller.emailController,
              ),
              const SizedBox(height: 18),
              Obx(
                () => CustomTextField(
                  hintText: 'Password',
                  prefixIcon: Icons.lock_outline,
                  obscureText: controller.obscurePassword.value,
                  controller: controller.passwordController,
                  suffixIcon: IconButton(
                    icon: Icon(
                      controller.obscurePassword.value
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: AppColors.iconColor,
                    ),
                    onPressed: controller.toggleObscurePassword,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Obx(
                () => Row(
                  children: [
                    Checkbox(
                      value: controller.rememberMe.value,
                      activeColor: AppColors.primary,
                      onChanged: controller.toggleRememberMe,
                    ),
                    const Text('Remember Me'),
                    const Spacer(),
                    TextButton(
                      onPressed: () {
                        Get.toNamed('/forgot-password');
                      },
                      child: const Text(
                        'Forget Password?',
                        style: TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Obx(
                () => CustomButton(
                  text: controller.isLoading.value
                      ? 'Signing In...'
                      : 'Sign In',
                  onPressed: controller.isLoading.value
                      ? () {}
                      : controller.login,
                  isPrimary: true,
                ),
              ),
              const SizedBox(height: 12),
              CustomButton(
                text: 'Create Account',
                onPressed: () {
                  Get.toNamed('/signup');
                },
                isPrimary: false,
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  const Expanded(
                    child: Divider(color: AppColors.divider, thickness: 1),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      'Or Sign In With',
                      style: TextStyle(color: AppColors.textSecondary),
                    ),
                  ),
                  const Expanded(
                    child: Divider(color: AppColors.divider, thickness: 1),
                  ),
                ],
              ),
              const SizedBox(height: 18),
              const SocialButtonsRow(),
            ],
          ),
        ),
      ),
    );
  }
}
