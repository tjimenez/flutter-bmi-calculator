import 'package:flutter/material.dart';

class CardButtonBox extends StatelessWidget {
  final Color color;
  final Widget child;
  final Function action;

  const CardButtonBox({
    super.key,
    required this.color,
    required this.child,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => action(),
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: child,
      ),
    );
  }
}
