import 'package:flutter/material.dart';
import 'package:smart_remove/common/widgets/appbar/appbar.dart';
import 'package:smart_remove/common/widgets/buttons/rounded_button.dart';
import 'package:smart_remove/common/widgets/text/auth_headline.dart';
import 'package:smart_remove/common/widgets/textfield/textfield.dart';
import 'package:smart_remove/utils/constants/sizes.dart';
import 'package:smart_remove/utils/constants/text_strings.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HkAppBar(showBackArrow: true),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(HkSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Forgot Pass Headline
              const HkAuthenticationHeadline(title: HkTexts.forgotPassword),
              const SizedBox(height: HkSizes.spaceBtwSections),

              /// Subtitle
              Text(HkTexts.subTitle, style: Theme.of(context).textTheme.labelMedium),
              const SizedBox(height: HkSizes.spaceBtwSections),

              /// Forgot Pass Form
              Column(
                children: [
                  /// Email
                  HkTextFormField(hintText: HkTexts.enterEmail, controller: TextEditingController()),
                  const SizedBox(height: HkSizes.spaceBtwSections * 2),

                  /// Send Code Button
                  HkRoundedButton(onTap: () {}, title: HkTexts.submit)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
