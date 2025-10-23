import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecomerace_app/src/features/widgets/curved_header_background.dart';
import 'package:ecomerace_app/src/features/widgets/profile_image_widget.dart';
import 'package:ecomerace_app/src/features/widgets/profile_menu_item.dart';
import 'package:ecomerace_app/src/widgets/custom_button.dart';
import 'package:ecomerace_app/src/utils/constants/app_colors.dart';
import 'package:ecomerace_app/src/features/profile/controller/profile_controller.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ProfileController profileController = Get.put(ProfileController());
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Column(
        children: [
          // Header with profile info
          CurvedHeaderBackground(
            height: 320,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 30),
                    const ProfileImageWidget(size: 120, showEditButton: true),
                    const SizedBox(height: 20),
                    Obx(
                      () => Text(
                        profileController.userName.value,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 6),
                    Obx(
                      () => Text(
                        profileController.userEmail.value,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/edit-profile');
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.edit, size: 18, color: Colors.white),
                            SizedBox(width: 8),
                            Text(
                              'Edit',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Account Settings Section
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Account Settings',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 16),

                  ProfileMenuItem(
                    icon: Icons.location_on_outlined,
                    title: 'My Addresses',
                    subtitle: 'Set shopping delivery addresses',
                    onTap: () {
                      Navigator.pushNamed(context, '/addresses');
                    },
                  ),

                  ProfileMenuItem(
                    icon: Icons.shopping_cart_outlined,
                    title: 'My Cart',
                    subtitle: 'Add, remove products and move to checkout',
                    onTap: () {
                      // Navigate to cart
                    },
                  ),

                  ProfileMenuItem(
                    icon: Icons.shopping_bag_outlined,
                    title: 'My Orders',
                    subtitle: 'In-progress and Completed Orders',
                    onTap: () {
                      Navigator.pushNamed(context, '/orders');
                    },
                  ),

                  const SizedBox(height: 32),

                  // Logout Button
                  CustomButton(
                    text: 'Logout',
                    isPrimary: false,
                    onPressed: () {
                      _showLogoutDialog(context);
                    },
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Logout'),
          content: const Text('Are you sure you want to logout?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                // Perform logout logic here
              },
              child: const Text('Logout'),
            ),
          ],
        );
      },
    );
  }
}
