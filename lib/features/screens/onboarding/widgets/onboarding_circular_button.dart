import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/features/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter_ecommerce/utils/constants/colors.dart';
import 'package:flutter_ecommerce/utils/constants/size.dart';
import 'package:flutter_ecommerce/utils/device/device_utility.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

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
