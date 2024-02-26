import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../auth/controllers/auth_controller.dart';

class LoginController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  Future<void> login() async {
    AuthController.to.verifyEmail();
    AuthController.to.login(token: 'this is a token');
  }
}
