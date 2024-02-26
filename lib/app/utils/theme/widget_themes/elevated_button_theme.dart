import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/* -- Light & Dark Elevated Button Themes -- */
class VDBElevatedButtonTheme {
  VDBElevatedButtonTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: VDBColors.light,
      backgroundColor: VDBColors.primary,
      disabledForegroundColor: VDBColors.darkGrey,
      disabledBackgroundColor: VDBColors.buttonDisabled,
      side: const BorderSide(color: VDBColors.primary),
      padding: const EdgeInsets.symmetric(vertical: VDBSizes.buttonHeight),
      textStyle: const TextStyle(
          fontSize: 16,
          color: VDBColors.textWhite,
          fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(VDBSizes.buttonRadius)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: VDBColors.light,
      backgroundColor: VDBColors.primary,
      disabledForegroundColor: VDBColors.darkGrey,
      disabledBackgroundColor: VDBColors.darkerGrey,
      side: const BorderSide(color: VDBColors.primary),
      padding: const EdgeInsets.symmetric(vertical: VDBSizes.buttonHeight),
      textStyle: const TextStyle(
          fontSize: 16,
          color: VDBColors.textWhite,
          fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(VDBSizes.buttonRadius)),
    ),
  );
}
