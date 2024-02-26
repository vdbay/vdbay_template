import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../routes/app_pages.dart';

class AuthController extends GetxController {
  static AuthController get to => Get.find();
  RxBool isLoggedIn = false.obs;
  RxBool isEmailVerified = true.obs;

  Future<void> saveToken(String token) async {
    await GetStorage().write('token', token);
  }

  String? getToken() {
    return GetStorage().read<String>('token');
  }

  void removeToken() {
    GetStorage().remove('token');
  }

  void login({required String token}) {
    saveToken(token);
    isLoggedIn.value = true;
  }

  void logout() {
    removeToken();
    isLoggedIn.value = false;
  }

  void verifyEmail() {
    isEmailVerified.value = true;
  }

  void unverifyEmail() {
    isEmailVerified.value = false;
  }

  @override
  void onReady() {
    super.onReady();
    ever(isLoggedIn, initialPage);
    ever(isEmailVerified, initialPage);
    isLoggedIn.value = GetStorage().read('token') != null;
    tokenKeyListener();
  }

  void tokenKeyListener() {
    GetStorage().listenKey('token', (value) {
      if (value == null || value == '') {
        isLoggedIn.value = false;
      } else {
        isLoggedIn.value = true;
      }
    });
  }

  void initialPage(_) {
    if (isLoggedIn.value) {
      if (isEmailVerified.value) {
        Get.offAllNamed(Routes.HOME);
      } else {
        Get.offAllNamed(Routes.VERIFY);
      }
    } else {
      Get.offAllNamed(Routes.LANDING);
    }
  }
}
