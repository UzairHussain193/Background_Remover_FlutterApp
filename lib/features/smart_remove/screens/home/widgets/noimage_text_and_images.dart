

import 'package:flutter/material.dart';
import 'package:smart_remove/common/widgets/image/rounded_image.dart';
import 'package:smart_remove/utils/constants/image_strings.dart';
import 'package:smart_remove/utils/constants/sizes.dart';
import 'package:smart_remove/utils/constants/text_strings.dart';

class HkNoImageTextAndImages extends StatelessWidget {
  const HkNoImageTextAndImages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        /// Text -> No Image? Try one of these:
        Align(
            alignment: Alignment.centerLeft,
            child: Text(HkTexts.noImage, style: Theme.of(context).textTheme.titleLarge,)),
        const SizedBox(height: HkSizes.spaceBtwItems,),

        /// Images
        SizedBox(
          height: 70,
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(width: HkSizes.spaceBtwItems / 2,),
            shrinkWrap: true,
            itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const HkRoundedImage(
                  width: 75,
                    height: 65,
                    image: HkImages.sliderImage2,
                  isNetworkImage: false,
                );
              },
          ),
        )

      ],
    );
  }
}
