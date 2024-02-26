import 'package:flutter/material.dart';
import '../theme/widget_themes/text_theme.dart';

import '../constants/colors.dart';
import 'widget_themes/appbar_theme.dart';
import 'widget_themes/bottom_sheet_theme.dart';
import 'widget_themes/checkbox_theme.dart';
import 'widget_themes/chip_theme.dart';
import 'widget_themes/elevated_button_theme.dart';
import 'widget_themes/outlined_button_theme.dart';
import 'widget_themes/text_field_theme.dart';

class VDBAppTheme {
  VDBAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: VDBColors.grey,
    brightness: Brightness.light,
    primaryColor: VDBColors.primary,
    textTheme: VDBTextTheme.lightTextTheme,
    chipTheme: VDBChipTheme.lightChipTheme,
    scaffoldBackgroundColor: VDBColors.white,
    appBarTheme: VDBAppBarTheme.lightAppBarTheme,
    checkboxTheme: VDBCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: VDBBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: VDBElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: VDBOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: VDBTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: VDBColors.grey,
    brightness: Brightness.dark,
    primaryColor: VDBColors.primary,
    textTheme: VDBTextTheme.darkTextTheme,
    chipTheme: VDBChipTheme.darkChipTheme,
    scaffoldBackgroundColor: VDBColors.black,
    appBarTheme: VDBAppBarTheme.darkAppBarTheme,
    checkboxTheme: VDBCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: VDBBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: VDBElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: VDBOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: VDBTextFormFieldTheme.darkInputDecorationTheme,
  );
}
