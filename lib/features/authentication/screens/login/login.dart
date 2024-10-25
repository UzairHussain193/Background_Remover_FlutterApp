
import 'package:flutter/material.dart';
import 'package:smart_remove/common/widgets/appbar/appbar.dart';
import 'package:smart_remove/features/authentication/screens/login/widgets/login_form.dart';
import 'package:smart_remove/features/authentication/screens/login/widgets/register_now_button.dart';
import 'package:smart_remove/utils/constants/sizes.dart';
import 'package:smart_remove/utils/constants/text_strings.dart';
import '../../../../common/widgets/form_divider/form_divider.dart';
import '../../../../common/widgets/social_buttons/social_buttons.dart';
import '../../../../common/widgets/text/auth_headline.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HkAppBar(
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(HkSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Welcome back Text Headline
              HkAuthenticationHeadline(title: HkTexts.welcomeBack,),

              SizedBox(height: HkSizes.spaceBtwSections,),

              /// Login Form
              HkLoginForm(),
              SizedBox(height: HkSizes.spaceBtwSections,),

              /// Form Divider
              HkFormDivider(title: HkTexts.orLoginWith,),
              SizedBox(height: HkSizes.spaceBtwSections),

            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(HkSizes.defaultSpace),
        child: HkRegisterNowButton(),
      ),
    );
  }
}







