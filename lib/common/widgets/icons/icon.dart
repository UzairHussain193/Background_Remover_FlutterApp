import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';

class HkIcon extends StatelessWidget {
  const HkIcon({
    super.key, required this.onTap, required this.icon,
  });

  final VoidCallback onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Icon(
          icon,
          color: HkColors.darkGrey,
        ));
  }
}
