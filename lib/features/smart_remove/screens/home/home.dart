
import 'package:flutter/material.dart';
import 'package:smart_remove/features/smart_remove/screens/home/widgets/drop_file_text.dart';
import 'package:smart_remove/features/smart_remove/screens/home/widgets/image_slider.dart';
import 'package:smart_remove/features/smart_remove/screens/home/widgets/remove_background_text.dart';
import 'package:smart_remove/features/smart_remove/screens/home/widgets/upload_image.dart';
import 'package:smart_remove/utils/constants/colors.dart';
import 'package:smart_remove/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Hi",style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: HkColors.primary,),),
      ),
      body: const SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(HkSizes.defaultSpace),
          child: Column(
            children: [

              /// Images Slider
              HkImageSlider(),
              SizedBox(height: HkSizes.spaceBtwItems,),

              /// Text -> "Remove Image Background"
              HkRemoveBackgroundText(),
              SizedBox(height: HkSizes.spaceBtwSections,),

              /// Upload Image Button
              HkUploadImageButton(),
              SizedBox(height: HkSizes.spaceBtwSections,),

              /// Text -> Drop a file & paste Image
              HkDropFileText(),
              SizedBox(height: HkSizes.spaceBtwSections,),

              /// Text & Images
              //HkNoImageTextAndImages()

            ],
          ),
        ),
      ),
    );
  }
}







