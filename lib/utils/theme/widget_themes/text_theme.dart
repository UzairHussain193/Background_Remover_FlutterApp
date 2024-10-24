import 'package:flutter/material.dart';
import '../../constants/colors.dart';

/// Custom Class for Light & Dark Text Themes
class HkTextTheme {
  HkTextTheme._(); // To avoid creating instances

  /// Customizable Light Text Theme
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 30.0, fontWeight: FontWeight.bold, color: HkColors.dark),
    headlineMedium: const TextStyle().copyWith(fontSize: 24.0, fontWeight: FontWeight.w800, color: HkColors.dark),
    headlineSmall: const TextStyle().copyWith(fontSize: 18.0, fontWeight: FontWeight.w800, color: HkColors.dark),

    titleLarge: const TextStyle().copyWith(fontSize: 18.0, fontWeight: FontWeight.w800, color: HkColors.dark),
    titleMedium: const TextStyle().copyWith(fontSize: 18.0, fontWeight: FontWeight.w600, color: HkColors.dark),
    titleSmall: const TextStyle().copyWith(fontSize: 18.0, fontWeight: FontWeight.w400, color: HkColors.dark),

    bodyLarge: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w800, color: HkColors.dark),
    bodyMedium: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w600, color: HkColors.dark),
    bodySmall: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w400, color: HkColors.dark.withOpacity(0.5)),

    labelLarge: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w600, color: HkColors.dark),
    labelMedium: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w400, color: HkColors.darkGrey),
  );

  /// Customizable Dark Text Theme
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 30.0, fontWeight: FontWeight.bold, color: HkColors.light),
    headlineMedium: const TextStyle().copyWith(fontSize: 24.0, fontWeight: FontWeight.w800, color: HkColors.light),
    headlineSmall: const TextStyle().copyWith(fontSize: 18.0, fontWeight: FontWeight.w800, color: HkColors.light),

    titleLarge: const TextStyle().copyWith(fontSize: 18.0, fontWeight: FontWeight.w800, color: HkColors.light),
    titleMedium: const TextStyle().copyWith(fontSize: 18.0, fontWeight: FontWeight.w600, color: HkColors.light),
    titleSmall: const TextStyle().copyWith(fontSize: 18.0, fontWeight: FontWeight.w400, color: HkColors.light),

    bodyLarge: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w800, color: HkColors.light),
    bodyMedium: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w600, color: HkColors.light),
    bodySmall: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w400, color: HkColors.light.withOpacity(0.5)),

    labelLarge: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w600, color: HkColors.light),
    labelMedium: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w400, color: HkColors.lightGrey),
  );
}
