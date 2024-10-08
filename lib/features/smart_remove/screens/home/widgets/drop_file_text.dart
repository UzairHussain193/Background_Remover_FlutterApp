
import 'package:flutter/material.dart';
import 'package:smart_remove/utils/constants/text_strings.dart';

import '../../../../../utils/constants/sizes.dart';

class HkDropFileText extends StatelessWidget {
  const HkDropFileText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(HkTexts.orDropAFile,style: Theme.of(context).textTheme.bodyLarge,),
        const SizedBox(height: HkSizes.spaceBtwItems / 2,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(HkTexts.pasteImageOr,style: Theme.of(context).textTheme.bodyMedium,),
            GestureDetector(
                child: Text(HkTexts.url,style: Theme.of(context).textTheme.bodyMedium!.copyWith(decoration: TextDecoration.underline),)
            )
          ],
        )
      ],
    );
  }
}