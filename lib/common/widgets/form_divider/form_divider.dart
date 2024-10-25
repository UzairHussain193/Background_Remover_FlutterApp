import 'package:flutter/material.dart';

class HkFormDivider extends StatelessWidget {
  const HkFormDivider({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Divider(thickness: 1, endIndent: 10)),
        Text(title,style: Theme.of(context).textTheme.labelMedium),
        const Expanded(child: Divider(thickness: 1, indent: 10)),
      ],
    );
  }
}
