import 'package:get/get.dart';

import '../screens/onboarding/onboarding.dart';
import '../screens/register/register.dart';

class Routes {

  static final route = [
    GetPage(name: '/onboarding', page: () => const OnboardingScreen()),
    GetPage(name: '/register', page: () => const RegisterScreen()),
  ];
}