import 'package:flutter/material.dart';

import '../../constants/colors.dart';

/* -- Light & Dark Outlined Button Themes -- */
class HkOutlinedButtonTheme {
  HkOutlinedButtonTheme._(); //To avoid creating instances


  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme  = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: HkColors.dark,
      side: const BorderSide(color: HkColors.primary),
    ),
  );

  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: HkColors.light,
      side: const BorderSide(color: HkColors.white),
    ),
  );
}
