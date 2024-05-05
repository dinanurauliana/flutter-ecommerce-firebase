import 'package:flutter_ecommerce/features/screens/login/login.dart';
import 'package:flutter_ecommerce/features/screens/register/verify_email.dart';
import 'package:get/get.dart';

import '../screens/onboarding/onboarding.dart';
import '../screens/register/register.dart';

class Routes {
  static final route = [
    GetPage(name: '/onboarding', page: () => const OnboardingScreen()),
    GetPage(name: '/login', page: () => const LoginScreen()),
    GetPage(name: '/register', page: () => const RegisterScreen()),
    GetPage(name: '/verify-email', page: () => const VerifyEmailScreen()),
  ];
}
