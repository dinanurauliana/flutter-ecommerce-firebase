import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/size.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../../controllers/register/register_controller.dart';

class RegisterForm extends GetView<RegisterController> {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Form(
      child: Column(
        children: [
          Row(
            children: [
              /// -- FIRST NAME
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Iconsax.user,
                    ),
                    labelText: TTexts.firstName,
                  ),
                ),
              ),
              const SizedBox(width: TSizes.spaceBtwInputFileds),

              /// -- LAST NAME
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Iconsax.user,
                    ),
                    labelText: TTexts.lastName,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: TSizes.spaceBtwInputFileds),

          /// -- USER NAME
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Iconsax.user_edit,
              ),
              labelText: TTexts.username,
            ),
          ),

          const SizedBox(height: TSizes.spaceBtwInputFileds),

          /// -- EMAIL
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Iconsax.direct,
              ),
              labelText: TTexts.email,
            ),
          ),

          const SizedBox(height: TSizes.spaceBtwInputFileds),

          /// -- PHONE NUMBER
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Iconsax.call,
              ),
              labelText: TTexts.phoneNo,
            ),
          ),

          const SizedBox(height: TSizes.spaceBtwInputFileds),

          /// -- PASSWORD
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Iconsax.password_check,
              ),
              labelText: TTexts.password,
              suffixIcon: Icon(
                Iconsax.eye_slash,
              ),
            ),
          ),

          const SizedBox(height: TSizes.spaceBtwItems),

          /// -- CHECK BOX, PRIVACY AND TERMS OF USE
          Row(
            children: [
              /// -- CHEKBOX
              Checkbox(value: true, onChanged: (value) {}),
              Expanded(
                child: RichText(
                  text: TextSpan(
                    text: '${TTexts.iAgreeTo} ',
                    style: Theme.of(context).textTheme.bodySmall,
                    children: [
                      TextSpan(
                        text: '${TTexts.privacyPolicy} ',
                        style: Theme.of(context).textTheme.bodyMedium!.apply(
                              color:
                                  dark ? TColors.white : TColors.colorPrimary,
                              decoration: TextDecoration.underline,
                              decorationColor:
                                  dark ? TColors.white : TColors.colorPrimary,
                            ),
                      ),
                      TextSpan(
                        text: '${TTexts.and} ',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      TextSpan(
                        text: '${TTexts.termsOfUse} ',
                        style: Theme.of(context).textTheme.bodyMedium!.apply(
                              color:
                                  dark ? TColors.white : TColors.colorPrimary,
                              decoration: TextDecoration.underline,
                              decorationColor:
                                  dark ? TColors.white : TColors.colorPrimary,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          /// -- BUTTON CREATE ACCOUNT
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(TTexts.createAccount),
            ),
          )
        ],
      ),
    );
  }
}
