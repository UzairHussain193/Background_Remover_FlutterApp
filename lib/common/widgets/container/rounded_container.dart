

import 'package:flutter/material.dart';
import 'package:smart_remove/utils/constants/sizes.dart';

class HkRoundedContainer extends StatelessWidget {
  const HkRoundedContainer({
    super.key,
    this.height,
    this.width,
    this.color,
    this.boxShadow,
    required this.child,
    this.padding,
    this.margin,
    this.borderRadius = HkSizes.borderRadius
  });


  final double? height, width;
  final Color? color;
  final BoxShadow? boxShadow;
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(HkSizes.borderRadius),
        color: color,
        boxShadow: boxShadow != null ? [
          boxShadow!
        ] : null,
      ),
      child: child,
    );
  }
}
