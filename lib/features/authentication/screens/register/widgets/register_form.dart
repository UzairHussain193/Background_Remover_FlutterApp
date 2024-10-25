import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_remove/common/widgets/buttons/rounded_button.dart';
import 'package:smart_remove/features/authentication/controllers/register/register_controller.dart';
import 'package:smart_remove/utils/validators/validation.dart';

import '../../../../../common/widgets/textfield/textfield.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class HkRegisterForm extends StatelessWidget {
  const HkRegisterForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<RegisterController>(context, listen: false);
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          /// Username
          HkTextFormField(
              validator: (value) => HkValidator.validateEmptyText('Username', value),
              hintText: HkTexts.username,
              controller: controller.username,
            onChanged: (value) => controller.username.text = value
          ),
          const SizedBox(height: HkSizes.spaceBtwItems / 2),

          /// Email
          HkTextFormField(
              validator: (value) => HkValidator.validateEmail(value),
              hintText: HkTexts.email,
              controller: controller.email,
              onChanged: (value) => controller.email.text = value
          ),
          const SizedBox(height: HkSizes.spaceBtwItems / 2),

          /// Password
          HkTextFormField(
              validator: (value) => HkValidator.validatePassword(value),
              hintText: HkTexts.password,
              controller: controller.password,
              onChanged: (value) => controller.password.text = value
          ),
          const SizedBox(height: HkSizes.spaceBtwItems / 2),

          /// Confirm Password
          HkTextFormField(
              validator: (value) => HkValidator.validatePassword(value),
              hintText: HkTexts.confirmPassword,
              controller: controller.confirmPassword,
              onChanged: (value) => controller.confirmPassword.text = value
          ),
          const SizedBox(height: HkSizes.spaceBtwSections),

          /// Register Button
          Consumer<RegisterController>(
            builder: (context, value, child) => HkRoundedButton(
              onTap: () => controller.register(context),
              title: HkTexts.register,
              isLoading: value.isLoading,
            ),
          )
        ],
      ),
    );
  }
}
