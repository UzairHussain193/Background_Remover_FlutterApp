import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:smart_remove/features/smart_remove/controllers/result/result_controller.dart';
import 'package:smart_remove/utils/constants/colors.dart';

import '../../../../../common/widgets/icons/icon.dart';
import '../../../../../utils/constants/sizes.dart';

class ZoomAndFlipOptions extends StatelessWidget {
  const ZoomAndFlipOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final resultController = Provider.of<ResultController>(context,listen: false);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        /// Zoom Out
        HkIcon(onTap: resultController.zoomOut, icon: Iconsax.search_zoom_out),
        const SizedBox(width: HkSizes.spaceBtwItems),

        /// Zoom In
        HkIcon(onTap: resultController.zoomIn, icon: Iconsax.search_zoom_in_1),
        const SizedBox(width: HkSizes.spaceBtwItems),

        Container(height: 24.0, width: 2.0, color: HkColors.darkGrey),
        const SizedBox(width: HkSizes.spaceBtwItems),

        /// Flip
        HkIcon(onTap: resultController.flipImage, icon: Icons.flip),
        const SizedBox(width: HkSizes.spaceBtwItems),

        Container(height: 24.0, width: 2.0, color: HkColors.darkGrey),
        const SizedBox(width: HkSizes.spaceBtwItems),



        HkIcon(onTap:  resultController.resetResultImage,icon: Icons.lock_reset,),

        // Container(height: 24, width: 2, color: HkColors.darkGrey),
        // const SizedBox(width: HkSizes.spaceBtwItems),

        /// Undo
        // HkIcon(onTap: () {}, icon: Icons.undo),
        // const SizedBox(width: HkSizes.spaceBtwItems / 2),
        //
        // /// Redo
        // HkIcon(onTap: () {}, icon: Icons.redo)
      ],
    );
  }
}
