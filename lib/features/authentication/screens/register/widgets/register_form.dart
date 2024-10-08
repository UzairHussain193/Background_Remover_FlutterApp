import 'package:flutter/material.dart';
import 'package:smart_remove/common/widgets/buttons/rounded_button.dart';

import '../../../../../common/widgets/textfield/textfield.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class HkRegisterForm extends StatelessWidget {
  const HkRegisterForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Username
        HkTextFormField(hintText: HkTexts.username, controller: TextEditingController()),
        const SizedBox(height: HkSizes.spaceBtwItems / 2),

        /// Email
        HkTextFormField(hintText: HkTexts.email, controller: TextEditingController()),
        const SizedBox(height: HkSizes.spaceBtwItems / 2),

        /// Password
        HkTextFormField(hintText: HkTexts.password, controller: TextEditingController()),
        const SizedBox(height: HkSizes.spaceBtwItems / 2),

        /// Confirm Password
        HkTextFormField(hintText: HkTexts.confirmPassword, controller: TextEditingController()),
        const SizedBox(height: HkSizes.spaceBtwSections),

        /// Register Button
        HkRoundedButton(onTap: () {}, title: HkTexts.register)
      ],
    );
  }
}
