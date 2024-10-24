
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_remove/common/widgets/image/rounded_image.dart';
import 'package:smart_remove/features/smart_remove/controllers/home/image_slider_controller.dart';
import 'package:smart_remove/utils/constants/sizes.dart';
import 'package:smart_remove/utils/helper/helper_functions.dart';

class HkImageSlider extends StatelessWidget {
  const HkImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Consumer<ImageSliderController>(
          builder: (context, controller, child) => SizedBox(
            width: double.infinity,
            height: HkHelperFunctions.getScreenHeight(context) * 0.35,
            child: CarouselSlider.builder(
                itemCount: controller.images.length,
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: HkSizes.autoPlayInterval),
                  autoPlayAnimationDuration: const Duration(seconds: HkSizes.autoPlayAnimationDuration),
                  aspectRatio: 4/3,
                  viewportFraction: 1,
                  scrollPhysics: const BouncingScrollPhysics(),
                ),
                itemBuilder: (context, index, realIndex) {
                  return HkRoundedImage(
                    width: double.infinity,
                      isNetworkImage: false,
                      image: controller.images[index]
                  );
                },

            )
          ),
        )
      ],
    );
  }
}
