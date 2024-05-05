import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/sign_up/success_screen.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/size.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../login/login.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void onClickSuccess() {
      Get.to(
        SuccessScreen(
          image: TImages.staticSuccessIllustration,
          title: TTexts.yourAccountCreatedTitle,
          subTitle: TTexts.yourAccountCreatedSubTitle,
          onPressed: () => Get.to(() => const LoginScreen()),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultspace),
          child: Center(
            child: Column(
              children: [
                /// -- IMAGE
                Image(
                  width: THelperFunctions.screenWidth() * 0.6,
                  image: const AssetImage(TImages.deliveredEmailIllustration),
                ),

                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                /// -- TEXT
                Text(
                  TTexts.confirmEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),

                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),

                Text(
                  TTexts.emailSupport,
                  style: Theme.of(context).textTheme.labelLarge,
                ),

                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),

                Text(
                  TTexts.confirmEmailSubTitle,
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),

                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                /// -- BUTTONS

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => onClickSuccess(),
                      child: const Text(TTexts.tContinue)),
                ),

                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                TextButton(
                  onPressed: () {},
                  child: Text(
                    TTexts.resendEmail,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
