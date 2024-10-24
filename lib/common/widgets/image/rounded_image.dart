
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:smart_remove/utils/constants/sizes.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../../utils/constants/colors.dart';

class HkRoundedImage extends StatelessWidget {
  const HkRoundedImage(
      {super.key,
      this.isNetworkImage = true,
      this.borderColor = HkColors.black,
      this.borderWidth = 1.0,
      this.showBorder = false,
      this.image,
      this.fit = BoxFit.cover,
      this.height,
      this.width,
        this.isMemoryImage = false,
        this.imageBytes
      });

  final bool isNetworkImage;
  final Color borderColor;
  final double borderWidth;
  final bool showBorder;
  final String? image;
  final BoxFit fit;
  final double? height, width;
  final bool isMemoryImage;
  final Uint8List? imageBytes;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(HkSizes.imageBorderRadius), border: showBorder ? Border.all(color: borderColor, width: borderWidth) : null),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(HkSizes.imageBorderRadius),
          child: isMemoryImage ?
          Image(
            height: height,
            width: width,
            fit: fit,
            image: MemoryImage(imageBytes!),
          ) :
          isNetworkImage
              ? CachedNetworkImage(
                  imageUrl: image ?? '',
                  fit: fit,
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  progressIndicatorBuilder: (context, url, progress) => CircularProgressIndicator(
                    value: progress.progress,
                  ),
                )
              : Image(
                  height: height,
                  width: width,
                  fit: fit,
                  image: AssetImage(image ?? ''),
                ),
        ));
  }
}
