import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/features/routes/routes.dart';
import 'package:flutter_ecommerce/features/screens/login/login.dart';
import 'package:flutter_ecommerce/features/screens/password_configuration/forget_password.dart';
import 'package:get/get.dart';

import 'features/screens/onboarding/onboarding.dart';
import 'utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const LoginScreen(),
      getPages: Routes.route,
    );
  }
}
