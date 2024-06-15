import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:focus_next/src/common/widgets/body_background.dart';
import 'package:focus_next/src/features/analysis/screens/analysis_screen.dart';
import 'package:focus_next/src/features/calendar/screens/calendar_screen.dart';
import 'package:focus_next/src/features/personalization/screens/profile_screen.dart';
import 'package:get/get.dart';

import 'src/features/task/screens/home/home_screen.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  final iconList = <IconData>[
    Icons.home,
    Icons.calendar_month_outlined,
    Icons.analytics_outlined,
    Icons.person,
  ];

  @override
  void initState() {
    super.initState();
    setState(() {
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark, // For dark icons
        statusBarBrightness: Brightness.light, // For iOS (optional)
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationMenuController());
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        backgroundColor: Colors.orange,
        child: const Icon(
          Icons.add,
          size: 36,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      ///Using animated_bottom_navigation_bar 1.3.3  package for better view
      bottomNavigationBar: Obx(
        () => AnimatedBottomNavigationBar(
          icons: iconList,
          activeIndex: controller.selectedIndex.value,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.softEdge,
          backgroundColor: Colors.black54,
          inactiveColor: Colors.white,
          activeColor: Colors.orange,
          leftCornerRadius: 16,
          rightCornerRadius: 16,
          onTap: (index) => controller.selectedIndex.value = index,
        ),
      ),

      ///Default Bottom NavigationBar using material design
      // bottomNavigationBar: Obx(
      //   () => NavigationBar(
      //     height: 60,
      //     selectedIndex: controller.selectedIndex.value,
      //     onDestinationSelected: (index) =>
      //         controller.selectedIndex.value = index,
      //     //backgroundColor: Colors.white,
      //     indicatorColor: Colors.grey[300],
      //     destinations: const [
      //       NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
      //       NavigationDestination(
      //           icon: Icon(Icons.calendar_month), label: 'Event'),
      //       NavigationDestination(
      //           icon: Icon(Icons.analytics_outlined), label: 'Analysis'),
      //       NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
      //     ],
      //   ),
      // ),
      body: BodyBackground(
        child: Obx(() => controller.screens[controller.selectedIndex.value]),
      ),
    );
  }
}

class NavigationMenuController extends GetxController {
  static NavigationMenuController get instance => Get.find();

  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const HomeScreen(),
    const CalendarScreen(),
    const AnalysisScreen(),
    const ProfileScreen(),
  ];
}
