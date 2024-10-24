import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class HkRoundedIcon extends StatelessWidget {
  const HkRoundedIcon({super.key,
    this.backgroundColor = HkColors.primary,
    required this.onTap,
    this.padding = HkSizes.buttonPadding,
    this.borderRadius = HkSizes.buttonBorderRadius,
    required this.icon
  });

  final Color backgroundColor;
  final VoidCallback onTap;
  final double padding;
  final double borderRadius;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        borderRadius: BorderRadius.circular(borderRadius),
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius)
        ),
        child: Icon(
          icon,
          size: HkSizes.iconMd,
          color: HkColors.white,
        ),
      ),
    );
  }
}
