import 'package:flutter/material.dart';
import 'package:smart_remove/utils/constants/colors.dart';
import 'package:smart_remove/utils/constants/sizes.dart';
import 'package:smart_remove/utils/helper/helper_functions.dart';

class HkCircularProgressIndicator extends StatelessWidget {
  const HkCircularProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HkHelperFunctions.isDarkMode(context);

    return SizedBox(
      width: HkSizes.circularIndicatorSize,
      height: HkSizes.circularIndicatorSize,
      child: CircularProgressIndicator(
        color:  dark ? HkColors.dark : HkColors.light,
      ),
    );
  }
}
