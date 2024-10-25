
import 'package:flutter/material.dart';
import 'package:smart_remove/utils/constants/text_strings.dart';
import '../../../../../common/widgets/buttons/rounded_button.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class HkLoginAndRegisterButtons extends StatelessWidget {
  const HkLoginAndRegisterButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Login Button
        HkRoundedButton(onTap: () {}, title: HkTexts.login),
        const SizedBox(height: HkSizes.spaceBtwItems),

        /// Register Button
        HkRoundedButton(onTap: () {}, title: HkTexts.register, isBorder: true, titleColor: HkColors.primary),
      ],
    );
  }
}