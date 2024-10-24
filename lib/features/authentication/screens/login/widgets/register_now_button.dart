
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:smart_remove/features/authentication/screens/register/register.dart';
=======
>>>>>>> 152f9fa8741191defaaf16dd3adbaf2eb1412137

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class HkRegisterNowButton extends StatelessWidget {
  const HkRegisterNowButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
<<<<<<< HEAD
        Text('${HkTexts.dontHaveAccount} ', style: Theme.of(context).textTheme.bodyMedium),
        GestureDetector(
            onTap: ()=> Navigator.push(context,MaterialPageRoute(builder: (context) => const RegisterScreen(),)),
=======
        Text('${HkTexts.dontHaveAccount} ', style: Theme.of(context).textTheme.bodyMedium,),
        GestureDetector(
            onTap: (){},
>>>>>>> 152f9fa8741191defaaf16dd3adbaf2eb1412137
            child: Text(HkTexts.registerNow, style: Theme.of(context).textTheme.bodyMedium!.apply(color: HkColors.primary),)),
      ],
    );
  }
}