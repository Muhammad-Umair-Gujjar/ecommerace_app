import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecomerace_app/src/features/widgets/profile_image_widget.dart';
import 'package:ecomerace_app/src/utils/constants/app_colors.dart';
import 'package:ecomerace_app/src/features/profile/controller/profile_controller.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProfileController profileController = Get.find<ProfileController>();
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
          'Edit Profile',
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profile Image
            const Center(
              child: ProfileImageWidget(size: 120, showEditButton: true),
            ),

            const SizedBox(height: 32),

            // Account Settings Section
            _buildSectionTitle('Account Settings'),
            const SizedBox(height: 16),

            Obx(
              () => _buildSettingsItem(
                'Name',
                profileController.userName.value,
                () {
                  Navigator.pushNamed(context, '/change-name');
                },
              ),
            ),

            Obx(
              () => _buildSettingsItem(
                'Username',
                profileController.username.value,
                () {},
              ),
            ),

            const SizedBox(height: 32),

            // Profile Settings Section
            _buildSectionTitle('Profile Settings'),
            const SizedBox(height: 16),

            Obx(
              () => _buildSettingsItem(
                'User ID',
                profileController.userId.value,
                null,
                trailing: IconButton(
                  icon: const Icon(
                    Icons.copy,
                    color: AppColors.textSecondary,
                    size: 20,
                  ),
                  onPressed: () {},
                ),
              ),
            ),

            Obx(
              () => _buildSettingsItem(
                'Email',
                profileController.userEmail.value,
                () {},
              ),
            ),

            Obx(
              () => _buildSettingsItem(
                'Phone Number',
                profileController.phoneNumber.value,
                () {},
              ),
            ),

            Obx(
              () => _buildSettingsItem(
                'Gender',
                profileController.gender.value,
                () {},
              ),
            ),

            const SizedBox(height: 40),

            // Close Account Button
            Container(
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Close Account',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppColors.textPrimary,
        ),
      ),
    );
  }

  Widget _buildSettingsItem(
    String label,
    String value,
    VoidCallback? onTap, {
    Widget? trailing,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 1),
      child: ListTile(
        title: Text(
          label,
          style: const TextStyle(fontSize: 14, color: AppColors.textSecondary),
        ),
        subtitle: Text(
          value,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: AppColors.textPrimary,
          ),
        ),
        trailing:
            trailing ??
            (onTap != null
                ? const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: AppColors.textSecondary,
                  )
                : null),
        onTap: onTap,
        contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
      ),
    );
  }
}
