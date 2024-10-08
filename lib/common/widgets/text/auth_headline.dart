
import 'package:flutter/material.dart';


class HkAuthenticationHeadline extends StatelessWidget {
  const HkAuthenticationHeadline({
    super.key, required this.title,
  });

  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.left,
      style: Theme.of(context).textTheme.headlineLarge,);
  }
}