import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/features/controllers/onboarding/onboarding_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/size.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';

class OnboardingNavigation extends StatelessWidget {
  const OnboardingNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;

    final isDark = THelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: TDeviceUtility.getBottomNavigationBarHeight(),
      left: TSizes.defaultspace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: isDark ? TColors.white : TColors.black,
          dotHeight: 6,
        ),
      ),
    );
  }
}
