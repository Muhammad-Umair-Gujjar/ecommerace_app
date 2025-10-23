import 'package:get/get.dart';

class ProfileController extends GetxController {
  // User profile data
  var userName = 'Unknown Pro'.obs;
  var userEmail = 'unknownpro@gmail.com'.obs;
  var firstName = 'Unknown'.obs;
  var lastName = 'Pro'.obs;
  var username = 'unknown_pro111'.obs;
  var userId = '237345'.obs;
  var phoneNumber = '+921234567890'.obs;
  var gender = 'Male'.obs;

  // Profile image
  var profileImageUrl = ''.obs;

  // Update user name
  void updateName(String first, String last) {
    firstName.value = first;
    lastName.value = last;
    userName.value = '$first $last';
  }

  // Update user email
  void updateEmail(String email) {
    userEmail.value = email;
  }

  // Update phone number
  void updatePhoneNumber(String phone) {
    phoneNumber.value = phone;
  }

  // Update gender
  void updateGender(String newGender) {
    gender.value = newGender;
  }

  // Update profile image
  void updateProfileImage(String imageUrl) {
    profileImageUrl.value = imageUrl;
  }
}
