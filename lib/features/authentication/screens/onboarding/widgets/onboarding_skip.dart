import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/features/authentication/controllers/onboarding/onboarding_controller.dart';

import '../../../../../utils/constants/size.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/device/device_utility.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;

    return Positioned(
      top: TDeviceUtility.getAppBarHeight(),
      right: TSizes.defaultspace,
      child: TextButton(
        onPressed: controller.skipPage,
        child: Text(
          TTexts.skip,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
