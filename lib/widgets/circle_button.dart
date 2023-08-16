import 'package:flutter/material.dart';

import '../const.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({super.key, required this.action, required this.child});

  final Function action;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () => {action()},
      fillColor: kTextSecondaryTransparentColor,
      constraints: const BoxConstraints.tightFor(
        width: 60.0,
        height: 60.0,
      ),
      shape: const CircleBorder(),
      child: child,
    );
  }
}