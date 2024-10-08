
import 'package:flutter/material.dart';
import 'package:smart_remove/utils/helper/helper_functions.dart';

import '../../../../../common/widgets/buttons/rounded_button.dart';
import '../../../../../utils/constants/colors.dart';

class HkDownloadHDButton extends StatelessWidget {
  const HkDownloadHDButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HkHelperFunctions.isDarkMode(context);
    return HkRoundedButton(
      onTap: (){},
      title: 'Download HD',
      isBorder: true,
      titleColor: dark ? HkColors.white : HkColors.dark,
    );
  }
}