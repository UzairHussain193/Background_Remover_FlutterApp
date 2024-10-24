
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:smart_remove/common/widgets/container/rounded_container.dart';
import 'package:smart_remove/utils/constants/sizes.dart';
import '../../../../../common/widgets/image/rounded_image.dart';
import '../../../../../utils/helper/helper_functions.dart';
import '../../../controllers/result/result_controller.dart';

class HkFinalResultImage extends StatelessWidget {
  const HkFinalResultImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ResultController>(
      builder: (context, resultController, child) {
        final bgRemovedImage = resultController.bgRemovedImage;
        return Screenshot(
          controller: resultController.screenshotController,
          child: HkRoundedContainer(
            width: double.infinity,
            height: HkHelperFunctions.getScreenHeight(context) * 0.35,
            child: InteractiveViewer(
              maxScale: 5,
              minScale: 0.2,
              scaleFactor: 1.0,
              transformationController: resultController.scaleController,
              alignment: Alignment.center,
              trackpadScrollCausesScale: true,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(HkSizes.imageBorderRadius),
                  color: resultController.selectedColor,
                ),
                child: HkRoundedImage(
                    isMemoryImage: true,
                    imageBytes: bgRemovedImage
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}