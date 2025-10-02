import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../widgets/custom_text_field.dart';
import '../../../../widgets/custom_button.dart';
import '../../component/social_buttons_row.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool agreeToTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Let's Get You Registered",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    hintText: 'First Name',
                    prefixIcon: Icons.person_outline,
                    controller: firstNameController,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: CustomTextField(
                    hintText: 'Last Name',
                    prefixIcon: Icons.person_outline,
                    controller: lastNameController,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            CustomTextField(
              hintText: 'Email',
              prefixIcon: Icons.send,
              controller: emailController,
            ),
            const SizedBox(height: 12),
            CustomTextField(
              hintText: 'Phone Number',
              prefixIcon: Icons.phone,
              controller: phoneController,
            ),
            const SizedBox(height: 12),
            CustomTextField(
              hintText: 'Password',
              prefixIcon: Icons.lock_outline,
              controller: passwordController,
              obscureText: true,
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Checkbox(
                  value: agreeToTerms,
                  activeColor: AppColors.primary,
                  onChanged: (value) {
                    setState(() {
                      agreeToTerms = value ?? false;
                    });
                  },
                ),
                const Text('I agree to '),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Privacy Policy',
                    style: TextStyle(
                      color: AppColors.primary,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                const Text(' and '),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Terms of use',
                    style: TextStyle(
                      color: AppColors.primary,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            CustomButton(
              text: 'Create Account',
              onPressed: () {
                Get.toNamed('/account-success');
              },
              isPrimary: true,
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
                    'Or Sign up  With',
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
    );
  }
}
