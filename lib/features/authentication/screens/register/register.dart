import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/sign_in/form_divider.dart';
import '../../../../common/widgets/sign_in/social_button.dart';
import '../../../../utils/constants/size.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../authentication/controllers/register/register_controller.dart';
import 'widgets/register_form.dart';

class RegisterScreen extends GetView<RegisterController> {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsIconTheme: Theme.of(context).iconTheme,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultspace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// -- TEXT SIGNUP
              Text(TTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),

              const SizedBox(height: TSizes.spaceBtwSections),

              /// -- FORM
              const RegisterForm(),

              const SizedBox(height: TSizes.spaceBtwSections),

              /// -- DIVIDER
              const TFormDivider(dividerText: TTexts.orSignUpWith),

              const SizedBox(height: TSizes.spaceBtwSections),

              /// -- FOOTER
              const TSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
