

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_remove/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helper/helper_functions.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final dark = HkHelperFunctions.isDarkMode(context);
    final controller = Provider.of<OnBoardingController>(context, listen: false);

    return Positioned(
        bottom: kBottomNavigationBarHeight + 25,
        left: HkSizes.defaultSpace,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect: ExpandingDotsEffect(
              dotHeight: 6,
              activeDotColor: dark ? HkColors.light : HkColors.dark),
        ));
  }
}