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
<<<<<<< HEAD
    this.obscureText = false, this.onChanged
=======
    this.obscureText = false
>>>>>>> 152f9fa8741191defaaf16dd3adbaf2eb1412137
  });

  final IconData? prefixIcon;
  final String hintText;
  final Widget? suffixIcon;
  final TextEditingController controller;
  final String?Function(String?)? validator;
  final bool obscureText;
<<<<<<< HEAD
  final Function(String)? onChanged;


=======
>>>>>>> 152f9fa8741191defaaf16dd3adbaf2eb1412137
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: HkColors.lightGrey,
          borderRadius: BorderRadius.circular(HkSizes.textFieldRadius)
      ),
      child: TextFormField(
<<<<<<< HEAD
        onChanged: onChanged,
=======
>>>>>>> 152f9fa8741191defaaf16dd3adbaf2eb1412137
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