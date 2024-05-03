import 'package:flutter/material.dart';

import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  RxInt currentPageIndex = 0.obs;

  // Update Current Index when Page Scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  //jump to the specificdot selected Page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  // update Current index & Jump to next page
  // void nextPage() {
  //   if (currentPageIndex.value == 2) {
  //     // Get.to(LoginScreen)
  //   } else {
  //     int page = currentPageIndex.value + 1;
  //     pageController.jumpToPage(page);
  //   }
  // }

  //Update current page index and jump to the next page
  void nextPage() {
    print(currentPageIndex.value);
    if (currentPageIndex.value == 2) {
      //Login Screen
    } else {
      int page = currentPageIndex.value + 1;
      pageController.animateToPage(
        page,
        duration:
            const Duration(milliseconds: 300), // Adjust the duration as needed
        curve: Curves.easeInOut, // Adjust the animation curve if desired
      );
    }
  }

  // Update current index & jump to the last peage
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
