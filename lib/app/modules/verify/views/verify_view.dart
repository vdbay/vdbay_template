import '../../../utils/extensions/widget_extension.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/verify_controller.dart';

class VerifyView extends GetView<VerifyController> {
  const VerifyView({super.key});
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
              Icons.mark_email_read_rounded,
              size: Get.width * 0.5,
              color: Get.theme.colorScheme.primary,
            ).withHero(tag: 'icon'),
          ),
          Text(
            "Verify your email",
            style: Get.theme.textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ).withHero(tag: 'title'),
          Text(
            'Please check your email for a verification link',
            style: Get.theme.textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ).withPaddingOnly(bottom: 32).withHero(tag: 'subtitle'),
          ElevatedButton(
            onPressed: () => controller.authController.verifyEmail(),
            child: const Text("Verify"),
          ).withSizedBox(width: Get.width).withHero(tag: 'verify'),
        ],
      ).withPaddingOnly(bottom: 32).withMarginAll().withSafeArea(),
    );
  }
}
