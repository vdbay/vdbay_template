import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../../routes/app_pages.dart';
import '../../../utils/extensions/widget_extension.dart';
import '../../../utils/common_widgets/vdb_textformfield.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Icon(
              Icons.login_rounded,
              size: Get.width > Get.height ? Get.height * 0.3 : Get.width * 0.3,
              color: Get.theme.colorScheme.primary,
            ).withHero(tag: 'icon'),
          ),
          Text(
            "Welcome back,",
            style: Get.theme.textTheme.displayMedium,
            textAlign: TextAlign.center,
          ).withHero(tag: 'title'),
          Text(
            'Please login to continue',
            style: Get.theme.textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ).withPaddingOnly(bottom: 32).withHero(tag: 'subtitle'),
          Form(
            child: Column(
              children: [
                VDBTextFormField(
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  prefixIcon: const Icon(Icons.email_rounded),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                  focusNode: FocusNode(),
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  textController: controller.emailController,
                ).withPaddingOnly(bottom: 16).withHero(tag: 'field1'),
                VDBTextFormField(
                  isPassword: true,
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  prefixIcon: const Icon(Icons.email_rounded),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                  focusNode: FocusNode(),
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.visiblePassword,
                  textController: controller.passwordController,
                ).withPaddingOnly(bottom: 16).withHero(tag: 'field2'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () => Get.offNamed(Routes.REGISTER),
                      child: const Text("Already have an account?"),
                    ).withHero(tag: 'account'),
                  ],
                ),
                ElevatedButton(
                  onPressed: () async {
                    await controller.login();
                  },
                  child: const Text("Login"),
                ).withSizedBox(width: Get.width).withHero(tag: 'button1'),
              ],
            ),
          ),
        ],
      ).withPaddingOnly(bottom: 32).withMarginAll().withSafeArea(),
    );
  }
}
