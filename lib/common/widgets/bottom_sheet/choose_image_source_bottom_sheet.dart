import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';
import '../icons/rounded_button.dart';

class HkChooseImageSourceBottomSheet extends StatelessWidget {
  const HkChooseImageSourceBottomSheet({super.key, required this.galleryOnPressed, required this.cameraOnPressed});

  final VoidCallback galleryOnPressed;
  final VoidCallback cameraOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            Text('Choose option :', style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: HkSizes.spaceBtwItems),
            ListTile(
              onTap: galleryOnPressed,
              contentPadding: const EdgeInsets.all(0),
              leading: HkRoundedIcon(
                onTap: galleryOnPressed,
                  icon: Icons.photo_library_outlined
              ),
              title: Text('Gallery',style: Theme.of(context).textTheme.bodyMedium,),
            ),
            const SizedBox(height: HkSizes.spaceBtwItems),

            ListTile(
              onTap: cameraOnPressed,
              contentPadding: const EdgeInsets.all(0),
              leading: HkRoundedIcon(
                onTap: cameraOnPressed,
                  icon: Icons.camera_alt_outlined
              ),
              title: Text('Camera',style: Theme.of(context).textTheme.bodyMedium),
            )
          ],
        )
    );
  }
}