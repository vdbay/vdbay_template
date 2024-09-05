import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../../utils/extensions/widget_extension.dart';
import '../../../routes/app_pages.dart';
import '../controllers/landing_controller.dart';

class LandingView extends GetView<LandingController> {
  const LandingView({super.key});
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
              Icons.person_rounded,
              size: Get.width > Get.height ? Get.height * 0.3 : Get.width * 0.3,
              color: Get.theme.colorScheme.primary,
            ).withHero(tag: 'icon'),
          ),
          Text(
            "VDBay",
            style: Get.theme.textTheme.displayMedium,
            textAlign: TextAlign.center,
          ).withHero(tag: 'title'),
          Text(
            'Over 20 years of experience',
            style: Get.theme.textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ).withPaddingOnly(bottom: 32).withHero(tag: 'subtitle'),
          ElevatedButton(
            onPressed: () => Get.toNamed(Routes.LOGIN),
            child: const Text("Continue"),
          ).withSizedBox(width: Get.width).withHero(tag: 'button1'),
        ],
      ).withPaddingOnly(bottom: 32).withMarginAll().withSafeArea(),
    );
  }
}
