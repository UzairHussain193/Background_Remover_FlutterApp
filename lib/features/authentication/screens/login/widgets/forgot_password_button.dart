

import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class HkForgotPasswordButton extends StatelessWidget {
  const HkForgotPasswordButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Text(HkTexts.forgotPassword, style: Theme.of(context).textTheme.bodyMedium!.apply(color: HkColors.darkGrey
      ),),
    );
  }
}