

import 'package:flutter/material.dart';
import 'package:smart_remove/utils/constants/sizes.dart';

import '../../../utils/constants/colors.dart';

class HkPixelTextAndIcon extends StatelessWidget {
  const HkPixelTextAndIcon({
    super.key,
    this.textColor = HkColors.darkGrey,
    required this.text,
  });

  final Color textColor;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text,style: Theme.of(context).textTheme.labelMedium!.apply(color: textColor),),
        const SizedBox(width: HkSizes.spaceBtwItems / 4,),
        const Icon(Icons.info_outline,size: 18,color: HkColors.darkGrey,)
      ],
    );
  }
}