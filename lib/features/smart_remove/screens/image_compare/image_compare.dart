import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_remove/common/widgets/appbar/appbar.dart';
import 'package:smart_remove/common/widgets/indicator.dart';
import 'package:smart_remove/features/smart_remove/controllers/image_compare/image_compare_controller.dart';
import 'package:smart_remove/utils/constants/colors.dart';
import 'package:smart_remove/utils/constants/sizes.dart';
import 'package:smart_remove/utils/helper/helper_functions.dart';
import '../../../../common/widgets/image/image_compare_slider.dart';
import '../../controllers/home/home_controller.dart';

class ImageCompareScreen extends StatelessWidget {
  const ImageCompareScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HkHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: HkAppBar(
        backgroundColor: HkColors.primary,
        title: Text('Compare Image', style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: dark ? HkColors.dark : HkColors.light)),
      ),

      /// Image Compare
      body: Consumer<HomeController>(builder: (context, homeController, child) {
        final before = homeController.userPickedImage;
        final after = homeController.bgRemovedImage;

        return Center(
            child: Padding(
              padding: const EdgeInsets.all(HkSizes.defaultSpace),
              child: HkImageCompareSlider(beforeImageBytes: before!, afterImageBytes: after!),
            ));
      }),

      /// Next Floating Button
      floatingActionButton: Consumer<ImageCompareController>(
        builder: (context, controller, child) {
          return FloatingActionButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(HkSizes.borderRadius)),
            onPressed: () => controller.tapOnNextButton(context),
            child: controller.isLoading
                ? const HkCircularProgressIndicator()
                : Icon(Icons.arrow_forward_ios_outlined, color: dark ? HkColors.dark : HkColors.light),
          );
        },
      ),
    );
  }
}
