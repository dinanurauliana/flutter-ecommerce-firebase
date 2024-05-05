import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/features/shop/screens/home/home.dart';
import 'package:flutter_ecommerce/utils/constants/colors.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationMenuController());
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          backgroundColor: dark ? TColors.black : TColors.white,
          indicatorColor: dark
              ? Colors.white.withOpacity(0.1)
              : TColors.white.withOpacity(0.1),
          selectedIndex: controller.currentIndex.value,
          onDestinationSelected: (index) =>
              controller.currentIndex.value = index,
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'shop'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile')
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.currentIndex.value]),
    );
  }
}

class NavigationMenuController extends GetxController {
  final RxInt currentIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.black,
    ),
    Container(
      color: Colors.red,
    )
  ];
}
