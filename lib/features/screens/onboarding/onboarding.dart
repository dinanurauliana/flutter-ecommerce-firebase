import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/features/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter_ecommerce/features/screens/onboarding/widgets/onboarding_circular_button.dart';
import 'package:get/get.dart';

import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/text_strings.dart';

import 'widgets/onboarding_dot_navigation.dart';
import 'widgets/onboarding_page.dart';
import 'widgets/onboarding_skip.dart';

class OnboardingScreen extends GetView<OnBoardingController> {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// -- Horizontal Scroll PageS
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnboardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitile: TTexts.onBoardingSubTitle1,
              ),
              OnboardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitile: TTexts.onBoardingSubTitle2,
              ),
              OnboardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitile: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          /// -- Skip Button
          const OnboardingSkip(),

          /// -- Dot Navigation SmoothPageIndicator
          const OnboardingNavigation(),

          /// -- Circular Button
          const OnboardingButton()
        ],
      ),
    );
  }
}
