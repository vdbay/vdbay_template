import '../../../utils/extensions/widget_extension.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({super.key});
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
              Icons.person_add_rounded,
              size: Get.width * 0.5,
              color: Get.theme.colorScheme.primary,
            ).withHero(tag: 'icon'),
          ),
          Text(
            "Scada Prima Cipta",
            style: Get.theme.textTheme.displayMedium,
            textAlign: TextAlign.center,
          ).withHero(tag: 'title'),
          Text(
            'Over 20 years of experience',
            style: Get.theme.textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ).withPaddingOnly(bottom: 32).withHero(tag: 'subtitle'),
          Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email_rounded),
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Get.theme.colorScheme.primary,
                      ),
                      borderRadius: BorderRadius.circular(48),
                    ),
                  ),
                ).withPaddingOnly(bottom: 16).withHero(tag: 'field1'),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock_rounded),
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Get.theme.colorScheme.primary,
                      ),
                      borderRadius: BorderRadius.circular(48),
                    ),
                    suffixIcon: const IconButton(
                      icon: Icon(Icons.visibility_rounded),
                      onPressed: null,
                    ),
                  ),
                ).withPaddingOnly(bottom: 16).withHero(tag: 'field2'),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock_rounded),
                    labelText: 'Confirm Password',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Get.theme.colorScheme.primary,
                      ),
                      borderRadius: BorderRadius.circular(48),
                    ),
                    suffixIcon: const IconButton(
                      icon: Icon(Icons.visibility_rounded),
                      onPressed: null,
                    ),
                  ),
                ).withHero(tag: 'field3'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () => Get.offNamed(Routes.LOGIN),
                      child: const Text("Already have an account?"),
                    ).withHero(tag: 'account'),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    controller.authController.login(token: 'this is a token');
                    controller.authController.verifyEmail();
                  },
                  child: const Text("Register"),
                ).withSizedBox(width: Get.width).withHero(tag: 'register'),
              ],
            ),
          ),
        ],
      ).withPaddingOnly(bottom: 32).withMarginAll().withSafeArea(),
    );
  }
}
