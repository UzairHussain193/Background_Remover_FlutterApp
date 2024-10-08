

import 'package:flutter/material.dart';
import 'package:smart_remove/utils/helper/helper_functions.dart';

import '../../../utils/constants/colors.dart';

class HkAppBar extends StatelessWidget implements PreferredSizeWidget{
  const HkAppBar({
    super.key,
    this.leadingIcon,
    this.showBackArrow = true,
    this.title, this.leadingOnPressed, this.actions, this.backgroundColor});

  final IconData? leadingIcon;
  final bool showBackArrow;
  final Widget?  title;
  final VoidCallback? leadingOnPressed;
  final List<Widget>? actions;
  final Color? backgroundColor;


  @override
  Widget build(BuildContext context) {
    final dark = HkHelperFunctions.isDarkMode(context);
    return AppBar(
      automaticallyImplyLeading: false,
      leading: showBackArrow ? IconButton(
          onPressed: () => Navigator.pop(context), icon: Icon(Icons.arrow_back,color: dark ? HkColors.dark : HkColors.light,))
      : leadingIcon != null ? IconButton(onPressed: leadingOnPressed,icon: Icon(leadingIcon,color: HkColors.primary,),) : null,

      title: title,
      actions: actions,
      backgroundColor: backgroundColor,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
