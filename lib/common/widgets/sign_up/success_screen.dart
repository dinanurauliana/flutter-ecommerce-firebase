import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/features/screens/login/login.dart';
import 'package:flutter_ecommerce/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce/utils/constants/size.dart';
import 'package:flutter_ecommerce/utils/constants/text_strings.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.onPressed});

  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultspace),
          child: Center(
            child: Column(
              children: [
                /// -- IMAGE
                Image(
                  width: THelperFunctions.screenWidth() * 0.6,
                  image: AssetImage(image),
                ),

                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                /// -- TEXT
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),

                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),

                Text(
                  subTitle,
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
                      onPressed: onPressed,
                      child: const Text(TTexts.tContinue)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
