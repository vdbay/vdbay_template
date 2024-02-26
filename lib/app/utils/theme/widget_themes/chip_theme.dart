import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class VDBChipTheme {
  VDBChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: VDBColors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: VDBColors.black),
    selectedColor: VDBColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: VDBColors.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: VDBColors.darkerGrey,
    labelStyle: TextStyle(color: VDBColors.white),
    selectedColor: VDBColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: VDBColors.white,
  );
}
