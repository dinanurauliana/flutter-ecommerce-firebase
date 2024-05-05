import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/navigation_menu.dart';
import 'package:get/get.dart';

import 'features/authentication/screens/login/login.dart';
import 'features/routes/routes.dart';
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
      home: const NavigationMenu(),
      getPages: Routes.route,
    );
  }
}
