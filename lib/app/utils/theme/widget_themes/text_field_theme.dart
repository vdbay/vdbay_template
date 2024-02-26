import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class VDBTextFormFieldTheme {
  VDBTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: VDBColors.darkGrey,
    suffixIconColor: VDBColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: TSizes.inputFieldHeight),
    labelStyle: const TextStyle()
        .copyWith(fontSize: VDBSizes.fontSizeMd, color: VDBColors.black),
    hintStyle: const TextStyle()
        .copyWith(fontSize: VDBSizes.fontSizeSm, color: VDBColors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle:
        const TextStyle().copyWith(color: VDBColors.black.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(VDBSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: VDBColors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(VDBSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: VDBColors.grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(VDBSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: VDBColors.dark),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(VDBSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: VDBColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(VDBSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: VDBColors.warning),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: VDBColors.darkGrey,
    suffixIconColor: VDBColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: TSizes.inputFieldHeight),
    labelStyle: const TextStyle()
        .copyWith(fontSize: VDBSizes.fontSizeMd, color: VDBColors.white),
    hintStyle: const TextStyle()
        .copyWith(fontSize: VDBSizes.fontSizeSm, color: VDBColors.white),
    floatingLabelStyle:
        const TextStyle().copyWith(color: VDBColors.white.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(VDBSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: VDBColors.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(VDBSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: VDBColors.darkGrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(VDBSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: VDBColors.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(VDBSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: VDBColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(VDBSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: VDBColors.warning),
    ),
  );
}
