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
<<<<<<< HEAD
      appBar: HkAppBar(showBackArrow: true),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(HkSizes.defaultSpace),
=======
      appBar: HkAppBar(
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
            padding: EdgeInsets.all(HkSizes.defaultSpace),
>>>>>>> 152f9fa8741191defaaf16dd3adbaf2eb1412137
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Welcome back Text Headline
              HkAuthenticationHeadline(title: HkTexts.registerToGetStarted),
<<<<<<< HEAD
              SizedBox(height: HkSizes.spaceBtwSections),
=======
              SizedBox(height: HkSizes.spaceBtwSections,),
>>>>>>> 152f9fa8741191defaaf16dd3adbaf2eb1412137

              HkRegisterForm(),
              SizedBox(height: HkSizes.spaceBtwSections),

              /// Divider
              HkFormDivider(title: HkTexts.orRegisterWith),
<<<<<<< HEAD
              SizedBox(
                height: HkSizes.spaceBtwSections,
              ),

              HkSocialButtons()
=======
              SizedBox(height: HkSizes.spaceBtwSections,),


              HkSocialButtons()



>>>>>>> 152f9fa8741191defaaf16dd3adbaf2eb1412137
            ],
          ),
        ),
      ),
    );
  }
}
<<<<<<< HEAD
=======


>>>>>>> 152f9fa8741191defaaf16dd3adbaf2eb1412137
