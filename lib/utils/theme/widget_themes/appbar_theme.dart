import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class HkAppBarTheme{
  HkAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: true,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: HkColors.black),
  );
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: true,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: HkColors.white),
  );
}