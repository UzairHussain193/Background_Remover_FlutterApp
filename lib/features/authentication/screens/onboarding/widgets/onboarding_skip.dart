import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../controllers/onboarding/onboarding_controller.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final controller = Provider.of<OnBoardingController>(context, listen: false);

    return Positioned(
      top: kToolbarHeight,
      right: HkSizes.defaultSpace,
      child: TextButton(
        onPressed: () => controller.skipPage(),
        child: const Text('Skip'),),);
  }
}