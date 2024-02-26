import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VDBElevatedButton extends GetView {
  const VDBElevatedButton({
    super.key,
    this.isAlternative = false,
    required this.onPressed,
    required this.text,
    this.widthModifier = 1.0,
    this.backgroundColor,
    this.textColor,
  });

  final bool isAlternative;
  final Function()? onPressed;
  final String text;
  final double widthModifier;
  final Color? backgroundColor;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor:
            isAlternative ? Get.theme.colorScheme.primary : backgroundColor,
      ),
      onPressed: onPressed,
      child: SizedBox(
        width: Get.width * widthModifier,
        child: Text(
          text.toUpperCase(),
          textAlign: TextAlign.center,
          style: TextStyle(
            color: isAlternative ? Get.theme.colorScheme.onPrimary : textColor,
          ),
        ),
      ),
    );
  }
}
