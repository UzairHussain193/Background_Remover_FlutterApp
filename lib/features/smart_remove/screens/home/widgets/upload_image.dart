import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_remove/features/smart_remove/controllers/home/home_controller.dart';

import '../../../../../common/widgets/buttons/rounded_button.dart';
import '../../../../../utils/constants/text_strings.dart';

class HkUploadImageButton extends StatelessWidget {
  const HkUploadImageButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeController>(
      builder: (context, controller, child) => HkRoundedButton(
          onTap: () async {

            await controller.uploadButtonTap(context);
          },
          isLoading: controller.isLoading,
          title: HkTexts.uploadButton),
    );
  }
}
