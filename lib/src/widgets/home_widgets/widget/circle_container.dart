import 'package:flutter/material.dart';

class CircleContainer extends StatelessWidget {
  const CircleContainer({
    Key? key,
    required this.child,
    required this.color,
  }) : super(key: key);
  final Widget child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: color,
          width: 2,
        ),
        color: color,
      ),
      child: child,
    );
  }
}
