import 'package:get/get.dart';

import '../../auth/controllers/auth_controller.dart';

class RegisterController extends GetxController {
  final authController = Get.put(AuthController());
}
