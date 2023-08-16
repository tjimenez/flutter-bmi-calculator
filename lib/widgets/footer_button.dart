import 'package:flutter/material.dart';

import '../const.dart';

class FooterButtonAction extends StatelessWidget {
  const FooterButtonAction({
    super.key,
    required this.action,
    required this.label,
  });

  final Function action;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => action(),
      child: Container(
        color: kAccentColor,
        margin: const EdgeInsets.only(
          top: 10,
          bottom: 30,
          left: 10,
          right: 10,
        ),
        width: double.infinity,
        height: 45,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 0),
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 25.0,
            ),
          ),
        ),
      ),
    );
  }
}