
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_remove/common/widgets/appbar/appbar.dart';
import 'package:smart_remove/common/widgets/buttons/rounded_button.dart';
import 'package:smart_remove/features/smart_remove/controllers/result/result_controller.dart';
import 'package:smart_remove/features/smart_remove/screens/result/widgets/download_hd_button.dart';
import 'package:smart_remove/features/smart_remove/screens/result/widgets/editing_buttons.dart';
import 'package:smart_remove/features/smart_remove/screens/result/widgets/final_result_image.dart';
import 'package:smart_remove/features/smart_remove/screens/result/widgets/zoom_and_flip_options.dart';
import 'package:smart_remove/utils/constants/colors.dart';
import 'package:smart_remove/utils/constants/sizes.dart';
import 'package:smart_remove/utils/constants/text_strings.dart';
import 'package:smart_remove/utils/helper/helper_functions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HkHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: HkAppBar(
        backgroundColor: HkColors.primary,
        title: Text('Background Removed', style: Theme.of(context).textTheme.headlineMedium!.apply(color: dark ? HkColors.dark : HkColors.light),),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(HkSizes.defaultSpace),
          child: Column(
            children: [
              /// Background Removed Image
              const HkFinalResultImage(),
              const SizedBox(height: HkSizes.spaceBtwItems),

              /// Zoom,Reset and Invert Options
              const ZoomAndFlipOptions(),
              const SizedBox(height: HkSizes.spaceBtwSections),

              /// GridView Editing Buttons Buttons
              const HkEditingButtons(),
              const SizedBox(height: HkSizes.spaceBtwSections * 2),


              /// Download Button
              Consumer<ResultController>(
                builder: (context, controller, child) {
                  return HkRoundedButton(onTap: () => controller.saveImageToGallery(context), title: HkTexts.download);
                },
              ),
              const SizedBox(height: HkSizes.spaceBtwItems),

              /// Pixel Text & Icon
             // const HkPixelTextAndIcon(text: '480 * 270 PX'),
              //const SizedBox(height: HkSizes.spaceBtwItems),

              const HkDownloadHDButton(),
              const SizedBox(height: HkSizes.spaceBtwItems),

              /// Pixel Text & Icon
              //const HkPixelTextAndIcon(text: '480 * 270 PX'),
            ],
          ),
        ),
      ),
    );
  }
}


