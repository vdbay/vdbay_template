import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../models/hierarcy.dart';
import '../../../utils/common_widgets/fdc_elevatedbutton.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: PageView(
        controller: controller.pageController,
        onPageChanged: (int index) {
          controller.pageIndex.value = index;
        },
        children: [
          Center(
            child: FDCElevatedButton(
              widthModifier: 0.5,
              onPressed: () => controller.logout(),
              text: 'Logout',
            ),
          ),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_rounded),
              label: 'Profile',
            ),
          ],
          currentIndex: controller.pageIndex.value,
          onTap: (int index) {
            controller.pageIndex.value = index;
            controller.pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 500),
              curve: Curves.ease,
            );
          },
        ),
      ),
    );
  }
}
