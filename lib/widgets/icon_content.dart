import 'package:flutter/material.dart';

import '../const.dart';

class IconContent extends StatelessWidget {
  const IconContent({
    super.key,
    required this.icon,
    required this.title,
  });

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: kTextColor,
          size: 80,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          title,
          style: kTextLabel,
        ),
      ],
    );
  }
}
