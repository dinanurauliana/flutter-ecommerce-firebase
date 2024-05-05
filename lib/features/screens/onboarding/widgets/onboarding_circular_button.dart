import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/size.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../../controllers/onboarding/onboarding_controller.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    final controller = OnBoardingController.instance;

    return Positioned(
      bottom: TDeviceUtility.getBottomNavigationBarHeight(),
      right: TSizes.defaultspace,
      child: ElevatedButton(
        onPressed: controller.nextPage,
        style: ElevatedButton.styleFrom(
            backgroundColor: dark ? TColors.colorPrimary : TColors.black,
            shape: const CircleBorder(),
            side: BorderSide.none),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
