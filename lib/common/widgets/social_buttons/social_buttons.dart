
import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';

class HkSocialButtons extends StatelessWidget {
  const HkSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: InkWell(
            onTap: (){},
            highlightColor: HkColors.black.withOpacity(0.2),
            overlayColor: WidgetStateProperty.all(HkColors.black.withOpacity(0.2)),
            borderRadius: BorderRadius.circular(HkSizes.buttonBorderRadius),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: HkSizes.buttonPadding),
              decoration: BoxDecoration(
                  border: Border.all(color: HkColors.grey,width: 1),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: const Image(
                  width: HkSizes.iconMd,
                  height: HkSizes.iconMd,
                  image: AssetImage(HkImages.google)),
            ),
          ),
        ),
        const SizedBox(width: HkSizes.spaceBtwItems,),
        Expanded(
          child: InkWell(
            onTap: (){},
            highlightColor: HkColors.black.withOpacity(0.2),
            overlayColor: WidgetStateProperty.all(HkColors.black.withOpacity(0.2)),
            borderRadius: BorderRadius.circular(HkSizes.buttonBorderRadius),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: HkSizes.buttonPadding),
              decoration: BoxDecoration(
                  border: Border.all(color: HkColors.grey,width: 1),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: const Image(
                  width: HkSizes.iconMd,
                  height: HkSizes.iconMd,
                  image: AssetImage(HkImages.facebook)),
            ),
          ),
        )
      ],
    );
  }
}