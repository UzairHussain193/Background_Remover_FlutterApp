import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:smart_remove/common/widgets/buttons/rounded_button.dart';
import 'package:smart_remove/utils/constants/sizes.dart';
import 'package:smart_remove/utils/constants/text_strings.dart';
import 'package:smart_remove/utils/validators/validation.dart';

import '../../../../../common/widgets/textfield/textfield.dart';
import '../../../controllers/login/login_controller.dart';
import 'forgot_password_button.dart';

class HkLoginForm extends StatelessWidget {
  const HkLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginController>(
        builder: (context, controller, child) => Form(
              key: controller.loginFormKey,
              child: Column(
                children: [
                  /// Email Text Field
                  HkTextFormField(
                    onChanged: (value) => controller.email.text = value,
                    prefixIcon: Iconsax.direct_right,
                    hintText: HkTexts.enterEmail,
                    controller: controller.email,
                    validator: (value) => HkValidator.validateEmail(value),
                  ),
                  const SizedBox(
                    height: HkSizes.spaceBtwItems,
                  ),

                  /// Password TextField
                  HkTextFormField(
                    onChanged: (value) => controller.password.text = value,
                    obscureText: controller.hidePassword,
                    prefixIcon: Iconsax.password_check,
                    hintText: HkTexts.enterPass,
                    controller: controller.password,
                    validator: (value) => HkValidator.validatePassword(value),
                    suffixIcon: IconButton(
                      icon: Icon(controller.hidePassword ? Iconsax.eye_slash : Iconsax.eye),
                      onPressed: controller.toggleHidePassword,
                    ),
                  ),
                  const SizedBox(height: HkSizes.spaceBtwItems / 2),

                  /// Forgot Password Button
                  const HkForgotPasswordButton(),
                  const SizedBox(height: HkSizes.spaceBtwSections * 2),
                  HkRoundedButton(
                      onTap: () => controller.login(context), title: HkTexts.login, isLoading: controller.isLoading),
                ],
              ),
            ));
  }
}
