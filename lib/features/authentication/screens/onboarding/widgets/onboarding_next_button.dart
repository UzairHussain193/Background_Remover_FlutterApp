


import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helper/helper_functions.dart';
import '../../../controllers/onboarding/onboarding_controller.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final dark = HkHelperFunctions.isDarkMode(context);
    final controller = Provider.of<OnBoardingController>(context, listen: false);

    return Positioned(
        bottom: kBottomNavigationBarHeight,
        right: HkSizes.defaultSpace,
        child: ElevatedButton(
          onPressed: () => controller.nextPage(context),
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: dark ? HkColors.primary : HkColors.black
          ),
          child: const Icon(Iconsax.arrow_right_3),
        )

    );
  }
}