import 'package:flutter/material.dart';
import 'package:smart_remove/utils/theme/widget_themes/appbar_theme.dart';
import 'package:smart_remove/utils/theme/widget_themes/bottom_sheet_theme.dart';
import 'package:smart_remove/utils/theme/widget_themes/checkbox_theme.dart';
import 'package:smart_remove/utils/theme/widget_themes/chip_theme.dart';
import 'package:smart_remove/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:smart_remove/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:smart_remove/utils/theme/widget_themes/text_field_theme.dart';
import 'package:smart_remove/utils/theme/widget_themes/text_theme.dart';


import '../constants/colors.dart';

class HkAppTheme {
  HkAppTheme._();

  static ThemeData lightTheme = ThemeData(
    primarySwatch: HkColors.myPrimaryColor,
    useMaterial3: false,
    fontFamily: 'InriaSans',
    disabledColor: HkColors.grey,
    brightness: Brightness.light,
    primaryColor: HkColors.primary,
    textTheme: HkTextTheme.lightTextTheme,
    chipTheme: HkChipTheme.lightChipTheme,
    scaffoldBackgroundColor: HkColors.white,
    appBarTheme: HkAppBarTheme.lightAppBarTheme,
    checkboxTheme: HkCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: HkBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: HkElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: HkOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: HkTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    primarySwatch: HkColors.myPrimaryColor,
    useMaterial3: false,
    fontFamily: 'InriaSans',
    disabledColor: HkColors.grey,
    brightness: Brightness.dark,
    primaryColor: HkColors.primary,
    textTheme: HkTextTheme.darkTextTheme,
    chipTheme: HkChipTheme.darkChipTheme,
    scaffoldBackgroundColor: HkColors.black,
    appBarTheme: HkAppBarTheme.darkAppBarTheme,
    checkboxTheme: HkCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: HkBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: HkElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: HkOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: HkTextFormFieldTheme.darkInputDecorationTheme,
  );
}
