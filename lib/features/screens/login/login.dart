import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/styles/spacing_styles.dart';
import '../../../common/widgets/sign_in/form_divider.dart';
import '../../../common/widgets/sign_in/social_button.dart';
import '../../../utils/constants/size.dart';
import '../../../utils/constants/text_strings.dart';
import '../../controllers/login/login_controller.dart';
import 'widgets/login_form.dart';
import 'widgets/login_header.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// -- LOGO, TITLE, AND SUBTITLE
              LoginHeader(),

              SizedBox(height: TSizes.spaceBtwSections),

              /// -- FORM
              LoginForm(),

              /// -- DIVIDER
              TFormDivider(dividerText: TTexts.orSignInWith),

              SizedBox(height: TSizes.spaceBtwSections),

              /// -- FOOTER
              TSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
