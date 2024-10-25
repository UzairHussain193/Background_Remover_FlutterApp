import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_remove/common/widgets/appbar/appbar.dart';
import 'package:smart_remove/common/widgets/buttons/rounded_button.dart';
import 'package:smart_remove/features/authentication/screens/login/login.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helper/helper_functions.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key, required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HkAppBar(
        showBackArrow: false,
        actions: [
          IconButton(
              onPressed: () {
                ///  as a Back Button
              },
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(HkSizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Image(image: const AssetImage(HkImages.deliveredEmailIllustration), width: HkHelperFunctions.getScreenWidth(context) * 0.6),
              const SizedBox(height: HkSizes.spaceBtwSections),

              /// Email, Title & Subtitle
              Text(email, style: Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.center),
              const SizedBox(height: HkSizes.spaceBtwItems),
              Text(HkTexts.changeYourPasswordTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
              const SizedBox(height: HkSizes.spaceBtwItems),
              Text(HkTexts.changeYourPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
              const SizedBox(height: HkSizes.spaceBtwSections),

              /// Buttons
              HkRoundedButton(
                  onTap: () => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const LoginScreen()), (route) => true),
                  title: HkTexts.done),
              const SizedBox(height: HkSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(onPressed: () {}, child: const Text(HkTexts.resendEmail)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
