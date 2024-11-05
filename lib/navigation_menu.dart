import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/wishlist/wishlist.dart';
import 'package:t_store/features/personalization/screens/settings/settings.dart';
import 'package:t_store/features/shop/screens/home/home.dart';
import 'package:t_store/features/shop/store/store.dart';

import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';
import 'package:t_store/utils/validators/sendtolk.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          backgroundColor: darkMode ? TColors.black : Colors.white,
          indicatorColor: darkMode
              ? TColors.white.withOpacity(0.1)
              : TColors.success.withOpacity(0.1),
          destinations: const [
            NavigationDestination(
                icon: Icon(Iconsax.home, color: Colors.green), label: 'Home'),
            NavigationDestination(
                icon: Icon(Iconsax.shop, color: Colors.green), label: 'Store'),
            NavigationDestination(
                icon: Icon(Iconsax.airplane, color: Colors.green),
                label: 'Send to LK '),
            NavigationDestination(
                icon: Icon(Iconsax.heart, color: Colors.green),
                label: 'Wishlist'),
            NavigationDestination(
                icon: Icon(Iconsax.user, color: Colors.green),
                label: 'Profile'),
          ],
        ),
      ),
      body: Obx(
        () => controller.screens[controller.selectedIndex.value],
      ),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const Store(),
    const Sendtolk(),
    const FavouriteScreen(),
    const SettingsScreen(),
  ];
}
