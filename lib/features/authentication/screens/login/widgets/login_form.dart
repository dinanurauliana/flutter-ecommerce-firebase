import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/features/authentication/screens/login/login.dart';
import 'package:flutter_ecommerce/navigation_menu.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/size.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../register/register.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          /// EMAIL
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Iconsax.direct_right,
              ),
              labelText: TTexts.email,
            ),
          ),

          const SizedBox(
            height: TSizes.spaceBtwInputFileds,
          ),

          /// PASSWORD
          TextFormField(
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

          const SizedBox(height: TSizes.spaceBtwInputFileds / 2),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// Remember Me
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                  ),
                  const Text(TTexts.rememberMe)
                ],
              ),

              /// Forgot Password
              TextButton(
                onPressed: () {},
                child: Text(
                  TTexts.forgetPassword,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              )
            ],
          ),

          const SizedBox(height: TSizes.spaceBtwSections),

          /// Sign In Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const NavigationMenu()),
              child: const Text(TTexts.signIn),
            ),
          ),

          const SizedBox(height: TSizes.spaceBtwItems),

          /// Create Account Button
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () => Get.to(() => const RegisterScreen()),
              child: const Text(TTexts.createAccount),
            ),
          ),

          const SizedBox(height: TSizes.spaceBtwSections),
        ],
      ),
    );
  }
}
