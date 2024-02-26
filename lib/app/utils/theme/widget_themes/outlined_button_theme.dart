import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/* -- Light & Dark Outlined Button Themes -- */
class VDBOutlinedButtonTheme {
  VDBOutlinedButtonTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: VDBColors.dark,
      side: const BorderSide(color: VDBColors.borderPrimary),
      textStyle: const TextStyle(
          fontSize: 16, color: VDBColors.black, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(
          vertical: VDBSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(VDBSizes.buttonRadius)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: VDBColors.light,
      side: const BorderSide(color: VDBColors.borderPrimary),
      textStyle: const TextStyle(
          fontSize: 16,
          color: VDBColors.textWhite,
          fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(
          vertical: VDBSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(VDBSizes.buttonRadius)),
    ),
  );
}
