import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:smart_remove/features/smart_remove/controllers/result/result_controller.dart';
import 'package:smart_remove/features/smart_remove/screens/result/widgets/result_gridview_button.dart';

class HkEditingButtons extends StatelessWidget {
  const HkEditingButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ResultController>(
        builder: (context, controller, child) => HkResultGridViewButton(
            title: 'Background',
            icon: Iconsax.add_square,
            onTap: () => controller.onBackgroundTap(context)
        )
    );
  }
}
