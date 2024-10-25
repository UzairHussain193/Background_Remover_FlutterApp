import 'package:flutter/material.dart';
import 'package:smart_remove/common/widgets/appbar/appbar.dart';
import 'package:smart_remove/common/widgets/form_divider/form_divider.dart';
import 'package:smart_remove/common/widgets/social_buttons/social_buttons.dart';
import 'package:smart_remove/common/widgets/text/auth_headline.dart';
import 'package:smart_remove/features/authentication/screens/register/widgets/register_form.dart';
import 'package:smart_remove/utils/constants/sizes.dart';

import '../../../../utils/constants/text_strings.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HkAppBar(showBackArrow: true),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(HkSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Welcome back Text Headline
              HkAuthenticationHeadline(title: HkTexts.registerToGetStarted),
              SizedBox(height: HkSizes.spaceBtwSections),

              HkRegisterForm(),
              SizedBox(height: HkSizes.spaceBtwSections),

              /// Divider
              HkFormDivider(title: HkTexts.orRegisterWith),
              SizedBox(
                height: HkSizes.spaceBtwSections,
              ),

              HkSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
