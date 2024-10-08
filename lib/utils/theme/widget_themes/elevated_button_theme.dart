import 'package:flutter/material.dart';
import '../../constants/colors.dart';

/* -- Light & Dark Elevated Button Themes -- */
class HkElevatedButtonTheme {
  HkElevatedButtonTheme._(); //To avoid creating instances


  /* -- Light Theme -- */
  static final lightElevatedButtonTheme  = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: HkColors.light,
      backgroundColor: HkColors.primary,
    ),
  );

  /* -- Dark Theme -- */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: HkColors.light,
      backgroundColor: HkColors.primary,
    ),
  );
}
