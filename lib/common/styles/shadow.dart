
import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';

class HkShadow{

  static BoxShadow resultGridViewButtonShadow = BoxShadow(
      color: HkColors.black.withOpacity(0.1),
      spreadRadius: 1,
      blurRadius: 3,
      offset:  const Offset(0, 0)
  );
}