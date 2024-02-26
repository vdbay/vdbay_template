import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../auth/controllers/auth_controller.dart';

class HomeController extends GetxController {
  final pageController = PageController();
  final pageIndex = 0.obs;
  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

  void logout() {
    AuthController.to.logout();
    AuthController.to.removeToken();
  }
}
