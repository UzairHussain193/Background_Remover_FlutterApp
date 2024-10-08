import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class HkTextFormField extends StatelessWidget {
  const HkTextFormField({
    super.key,
    this.prefixIcon,
    required this.hintText,
    this.suffixIcon,
    required this.controller,
    this.validator,
    this.obscureText = false
  });

  final IconData? prefixIcon;
  final String hintText;
  final Widget? suffixIcon;
  final TextEditingController controller;
  final String?Function(String?)? validator;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: HkColors.lightGrey,
          borderRadius: BorderRadius.circular(HkSizes.textFieldRadius)
      ),
      child: TextFormField(
        obscureText: obscureText,
        validator: validator,
        style: const TextStyle().copyWith(color: HkColors.darkerGrey),
        decoration: InputDecoration(
          prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
          suffixIcon: suffixIcon,
          hintText: hintText,
        ),
      ),
    );
  }
}