
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_compare_slider/image_compare_slider.dart';
import 'package:smart_remove/common/widgets/image/rounded_image.dart';
import 'package:smart_remove/utils/constants/sizes.dart';

import '../../../utils/constants/colors.dart';

class HkImageCompareSlider extends StatelessWidget {
  const HkImageCompareSlider({
    super.key,
    required this.beforeImageBytes,
    required this.afterImageBytes,
  });

  final Uint8List beforeImageBytes;
  final Uint8List afterImageBytes;
  @override
  Widget build(BuildContext context) {
    return ImageCompareSlider(
      dividerColor: HkColors.primary,
      dividerWidth: HkSizes.imageCompareDividerWidth,
      fillHandle: true,
      handleRadius: BorderRadius.circular(2),
      itemOneBuilder: (child, context) {
        return HkRoundedImage(
          isMemoryImage: true,
          imageBytes: beforeImageBytes,
        );
      },

      itemTwoBuilder: (child, context) {
        return HkRoundedImage(
          isMemoryImage: true,
          imageBytes: afterImageBytes
        );
      },
      itemTwo: Image.asset(''),
      itemOne: Image.asset(''),);
  }
}