import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class HomeBannerController extends GetxController {
  final RxInt currentIndex = 0.obs;
  final int bannerCount;
  Timer? _timer;
  late final PageController pageController;

  HomeBannerController({required this.bannerCount}) {
    pageController = PageController(initialPage: 0);
  }

  @override
  void onInit() {
    super.onInit();
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 2), (_) {
      nextBanner();
    });
  }

  void nextBanner() {
    int nextPage = (currentIndex.value + 1) % bannerCount;
    pageController.animateToPage(
      nextPage,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
    currentIndex.value = nextPage;
  }

  void onPageChanged(int index) {
    currentIndex.value = index;
    _startAutoScroll();
  }

  @override
  void onClose() {
    _timer?.cancel();
    pageController.dispose();
    super.onClose();
  }
}
