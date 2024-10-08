

import 'package:flutter/material.dart';
import 'package:smart_remove/utils/constants/text_strings.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../image/circular_image.dart';

class HkLogoAndName extends StatelessWidget {
  const HkLogoAndName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 50.0,),
        HkCircularImage(
            height: 100,
            width: 100,
            image: HkImages.logo
        ),
        SizedBox(height: HkSizes.spaceBtwItems,),
        Text( HkTexts.name,style: TextStyle(color: HkColors.white,fontFamily: 'LilitaOne',fontSize: 40)),


      ],
    );
  }
}