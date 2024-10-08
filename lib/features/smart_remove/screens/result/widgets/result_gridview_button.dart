
import 'package:flutter/material.dart';
import 'package:smart_remove/utils/helper/helper_functions.dart';

import '../../../../../common/styles/shadow.dart';
import '../../../../../common/widgets/buttons/rounded_button.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class HkResultGridViewButton extends StatelessWidget {
  const HkResultGridViewButton({
    super.key,
    required this.icon,
    required this.title,
    this.color = HkColors.white, required this.onTap,
  });

  final IconData icon;
  final String title;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return HkRoundedButton(
      onTap: onTap,
        width: HkHelperFunctions.getScreenWidth(context) / 2,
        boxShadow: HkShadow.resultGridViewButtonShadow,
        color: color,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: HkColors.darkGrey,),
            const SizedBox(width: HkSizes.spaceBtwItems / 2,),
            Flexible(child: Text(title, style: Theme.of(context).textTheme.labelMedium,overflow: TextOverflow.ellipsis,))
          ],
        )
    );
  }
}