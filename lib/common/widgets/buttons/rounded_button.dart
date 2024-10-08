import 'package:flutter/material.dart';
import 'package:smart_remove/utils/constants/colors.dart';
import 'package:smart_remove/utils/constants/sizes.dart';

class HkRoundedButton extends StatelessWidget {
  const HkRoundedButton(
      {super.key,
      required this.onTap,
      this.title,
      this.height,
      this.width = double.infinity,
      this.color = HkColors.primary,
      this.borderColor = HkColors.primary,
      this.isBorder = false,
      this.titleColor = HkColors.white,
      this.boxShadow,
      this.child,
      this.padding,
      this.isLoading = false});

  final VoidCallback onTap;
  final String? title;
  final double? width, height;
  final Color color, borderColor;
  final bool isBorder;
  final Color titleColor;
  final BoxShadow? boxShadow;
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      highlightColor: HkColors.black.withOpacity(0.2),
      overlayColor: WidgetStateProperty.all(HkColors.black.withOpacity(0.2)),
      borderRadius: BorderRadius.circular(HkSizes.buttonBorderRadius),
      child: Container(
        width: width,
        height: height,
        padding: padding ?? const EdgeInsets.all(HkSizes.buttonPadding),
        decoration: BoxDecoration(
            color: !isBorder ? color : null,
            borderRadius: BorderRadius.circular(HkSizes.buttonBorderRadius),
            border: isBorder ? Border.all(color: borderColor) : null,
            boxShadow: boxShadow != null ? [boxShadow!] : null),
        child: isLoading
            ? const Center(
                child: SizedBox(height: HkSizes.circularIndicatorSize, width: HkSizes.circularIndicatorSize, child: CircularProgressIndicator(color: HkColors.white)))
            : child ?? Text(title ?? '', textAlign: TextAlign.center, style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: titleColor)),
      ),
    );
  }
}
