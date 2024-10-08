
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class HkRegisterNowButton extends StatelessWidget {
  const HkRegisterNowButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('${HkTexts.dontHaveAccount} ', style: Theme.of(context).textTheme.bodyMedium,),
        GestureDetector(
            onTap: (){},
            child: Text(HkTexts.registerNow, style: Theme.of(context).textTheme.bodyMedium!.apply(color: HkColors.primary),)),
      ],
    );
  }
}