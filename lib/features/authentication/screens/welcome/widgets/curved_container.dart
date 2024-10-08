import 'package:flutter/material.dart';
import 'package:smart_remove/common/widgets/container/circular_container.dart';

import '../../../../../common/widgets/container/curved_edges/custom_curve.dart';
import '../../../../../common/widgets/text_icon/logo_and_name.dart';
import '../../../../../utils/constants/colors.dart';

class HkCurvedContainer extends StatelessWidget {
  const HkCurvedContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: HkCustomClipper(),
      child: Container(
        width: double.infinity,
        color: HkColors.primary,
        child: Stack(
          children: [
            Positioned(top: -100, right: -150, child: HkCircularContainer(width: 300, height: 300, backgroundColor: HkColors.white.withOpacity(0.2))),
            Positioned(top: 100, right: -200, child: HkCircularContainer(width: 300, height: 300, backgroundColor: HkColors.white.withOpacity(0.2))),
            const Align(
              alignment: Alignment.topCenter,
                child: HkLogoAndName()),
          ],
        ),
      ),
    );
  }
}
