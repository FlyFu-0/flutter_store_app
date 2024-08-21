import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/authentication/screens/login/login.dart';

class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index) => currentPageIndex.value = index;

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  void nextPage() {
    if (currentPageIndex.value == 2){
      Get.offAll(() => const LoginScreen());
    }
    int page = currentPageIndex.value + 1;
    pageController.jumpToPage(page);
  }

  void skipPage() {
    currentPageIndex.value = 3;
    pageController.jumpToPage(3);
  }
}