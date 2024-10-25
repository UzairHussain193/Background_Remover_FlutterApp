import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_remove/common/styles/padding.dart';
import 'package:smart_remove/features/authentication/screens/welcome/widgets/curved_container.dart';
import 'package:smart_remove/features/authentication/screens/welcome/widgets/login_and_register_buttons.dart';
import 'package:smart_remove/utils/constants/image_strings.dart';
import 'package:smart_remove/utils/constants/sizes.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          /// Curved Edges container With Logo And Name
          const Expanded(flex: 14, child: HkCurvedContainer()),

          Expanded(
            flex: 20,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: HkPadding.welcomeScreenPadding,
                child: Column(
                  children: [
                    /// Login Image
                    SvgPicture.asset(HkImages.loginImage, height: 250, width: 250, fit: BoxFit.cover),

                    /// Login & Register Buttons
                    const HkLoginAndRegisterButtons(),
                    const SizedBox(height: HkSizes.spaceBtwSections),


                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
