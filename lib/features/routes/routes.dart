import 'package:get/get.dart';

import '../authentication/screens/login/login.dart';
import '../authentication/screens/onboarding/onboarding.dart';
import '../authentication/screens/register/register.dart';
import '../authentication/screens/register/verify_email.dart';

class Routes {
  static final route = [
    GetPage(name: '/onboarding', page: () => const OnboardingScreen()),
    GetPage(name: '/login', page: () => const LoginScreen()),
    GetPage(name: '/register', page: () => const RegisterScreen()),
    GetPage(name: '/verify-email', page: () => const VerifyEmailScreen()),
  ];
}
